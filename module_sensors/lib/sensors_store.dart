import 'dart:async';

import 'package:flutter_sensors/flutter_sensors.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

part 'sensors_store.g.dart';

class SensorsStore = _SensorsStore with _$SensorsStore;

abstract class _SensorsStore with Store {
  final errorStore = ErrorStore();
  final sensorsManager = SensorManager();

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  SensorEvent accelerometerEvent;

  @observable
  SensorEvent gyroscopeEvent;

  @observable
  SensorEvent magnetometerEvent;

  StreamSubscription<SensorEvent> _$accelerometer;

  StreamSubscription<SensorEvent> _$gyroscope;

  StreamSubscription<SensorEvent> _$magnetometer;

  @action
  Future startAccelerometer() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.ACCELEROMETER,
      interval: Sensors.SENSOR_DELAY_GAME,
    );
    _$accelerometer = stream.listen((sensorEvent) {
      accelerometerEvent = sensorEvent;
    });
  }

  @action
  Future stopAccelerometer() async {
    _$accelerometer.cancel();
  }

  @action
  Future startGyroscope() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.GYROSCOPE,
      interval: Sensors.SENSOR_DELAY_GAME,
    );
    _$gyroscope = stream.listen((sensorEvent) {
      gyroscopeEvent = sensorEvent;
    });
  }

  @action
  Future stopGyroscope() async {
    _$gyroscope.cancel();
  }

  @action
  Future startMagnetometer() async {
    final stream = await SensorManager().sensorUpdates(
      sensorId: Sensors.MAGNETIC_FIELD,
      interval: Sensors.SENSOR_DELAY_GAME,
    );
    _$magnetometer = stream.listen((sensorEvent) {
      magnetometerEvent = sensorEvent;
    });
  }

  @action
  Future stopMagnetometer() async {
    _$magnetometer.cancel();
  }

  @action
  Future close() async {
    stopAccelerometer();
    stopGyroscope();
    stopMagnetometer();
  }
}
