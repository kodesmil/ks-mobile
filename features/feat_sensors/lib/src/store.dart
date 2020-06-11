import 'dart:async';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:csv/csv.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_sensors/flutter_sensors.dart';
import 'package:intl/intl.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';

part 'store.g.dart';

class SensorsStore = _SensorsStore with _$SensorsStore;

class AblySensorEvent {
  SensorEvent event;
  DateTime recordedAt;

  AblySensorEvent({this.event, this.recordedAt});

  @override
  String toString() {
    final timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(recordedAt);
    return '$timestamp     '
        '${event.data.map((e) => e.toStringAsFixed(2)).join(' - ')}      '
        '(${event.accuracy.toStringAsFixed(2)})';
  }

  List toProps() {
    return [
      recordedAt.millisecondsSinceEpoch,
      ...event.data,
      event.accuracy,
    ];
  }
}

abstract class _SensorsStore with Store {
  final errorStore = ErrorStore();
  final sensorsManager = SensorManager();

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  List<AblySensorEvent> accelerometerEvents = [];

  @observable
  List<AblySensorEvent> gyroscopeEvents = [];

  @observable
  List<AblySensorEvent> magnetometerEvents = [];

  StreamSubscription<SensorEvent> _$accelerometer;

  StreamSubscription<SensorEvent> _$gyroscope;

  StreamSubscription<SensorEvent> _$magnetometer;

  @action
  Future sendAsEmail() async {
    final timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    var ablyDir = await getTemporaryDirectory()
      ..createTemp('ably');
    final acFile = await csvAccelerometer(ablyDir);
    final gsFile = await csvGyroscope(ablyDir);
    final mgFile = await csvMagnetometer(ablyDir);

    final zipFilePath = '${ablyDir.path}/$timestamp.zip';
    var encoder = ZipFileEncoder();
    encoder.create(zipFilePath);
    encoder.addFile(acFile);
    encoder.addFile(gsFile);
    encoder.addFile(mgFile);
    encoder.close();

    final email = Email(
      subject: 'User data <$timestamp>',
      recipients: ['deepakpalaksha22@gmail.com'],
      attachmentPath: zipFilePath,
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  final header = ['timestamp', 'x', 'y', 'z', 'accuracy'];

  Future<File> csvAccelerometer(Directory directory) {
    final events = [
      header,
      ...accelerometerEvents.map((e) => e.toProps()),
    ];
    final file = File('${directory.path}/accelerometer.csv');
    return file.writeAsString(ListToCsvConverter().convert(events));
  }

  Future<File> csvMagnetometer(Directory directory) async {
    final events = [
      header,
      ...magnetometerEvents.map((e) => e.toProps()),
    ];
    final file = File('${directory.path}/magnetometer.csv');
    return file.writeAsString(ListToCsvConverter().convert(events));
  }

  Future<File> csvGyroscope(Directory directory) async {
    final events = [
      header,
      ...gyroscopeEvents.map((e) => e.toProps()),
    ];
    final file = File('${directory.path}/gyroscope.csv');
    return file.writeAsString(ListToCsvConverter().convert(events));
  }

  @action
  Future startAccelerometer() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.ACCELEROMETER,
      interval: Duration(seconds: 1),
    );
    _$accelerometer = stream.listen((sensorEvent) {
      accelerometerEvents = [
        ...accelerometerEvents,
        AblySensorEvent(event: sensorEvent, recordedAt: DateTime.now())
      ];
    });
  }

  @action
  Future stopAccelerometer() async {
    await _$accelerometer.cancel();
  }

  @action
  Future startGyroscope() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.GYROSCOPE,
      interval: Duration(seconds: 1),
    );
    _$gyroscope = stream.listen((sensorEvent) {
      gyroscopeEvents = [
        ...gyroscopeEvents,
        AblySensorEvent(event: sensorEvent, recordedAt: DateTime.now())
      ];
    });
  }

  @action
  Future stopGyroscope() async {
    await _$gyroscope.cancel();
  }

  @action
  Future startMagnetometer() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.MAGNETIC_FIELD,
      interval: Duration(seconds: 1),
    );
    _$magnetometer = stream.listen((sensorEvent) {
      magnetometerEvents = [
        ...magnetometerEvents,
        AblySensorEvent(event: sensorEvent, recordedAt: DateTime.now())
      ];
    });
  }

  @action
  Future stopMagnetometer() async {
    await _$magnetometer.cancel();
  }

  @action
  Future close() async {
    await stopAccelerometer();
    await stopGyroscope();
    await stopMagnetometer();
  }
}
