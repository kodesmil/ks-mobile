// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SensorsStore on _SensorsStore, Store {
  final _$successAtom = Atom(name: '_SensorsStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SensorsStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$accelerometerEventsAtom =
      Atom(name: '_SensorsStore.accelerometerEvents');

  @override
  List<AblySensorEvent> get accelerometerEvents {
    _$accelerometerEventsAtom.reportRead();
    return super.accelerometerEvents;
  }

  @override
  set accelerometerEvents(List<AblySensorEvent> value) {
    _$accelerometerEventsAtom.reportWrite(value, super.accelerometerEvents, () {
      super.accelerometerEvents = value;
    });
  }

  final _$gyroscopeEventsAtom = Atom(name: '_SensorsStore.gyroscopeEvents');

  @override
  List<AblySensorEvent> get gyroscopeEvents {
    _$gyroscopeEventsAtom.reportRead();
    return super.gyroscopeEvents;
  }

  @override
  set gyroscopeEvents(List<AblySensorEvent> value) {
    _$gyroscopeEventsAtom.reportWrite(value, super.gyroscopeEvents, () {
      super.gyroscopeEvents = value;
    });
  }

  final _$magnetometerEventsAtom =
      Atom(name: '_SensorsStore.magnetometerEvents');

  @override
  List<AblySensorEvent> get magnetometerEvents {
    _$magnetometerEventsAtom.reportRead();
    return super.magnetometerEvents;
  }

  @override
  set magnetometerEvents(List<AblySensorEvent> value) {
    _$magnetometerEventsAtom.reportWrite(value, super.magnetometerEvents, () {
      super.magnetometerEvents = value;
    });
  }

  final _$sendAsEmailAsyncAction = AsyncAction('_SensorsStore.sendAsEmail');

  @override
  Future<dynamic> sendAsEmail() {
    return _$sendAsEmailAsyncAction.run(() => super.sendAsEmail());
  }

  final _$startAccelerometerAsyncAction =
      AsyncAction('_SensorsStore.startAccelerometer');

  @override
  Future<dynamic> startAccelerometer() {
    return _$startAccelerometerAsyncAction
        .run(() => super.startAccelerometer());
  }

  final _$stopAccelerometerAsyncAction =
      AsyncAction('_SensorsStore.stopAccelerometer');

  @override
  Future<dynamic> stopAccelerometer() {
    return _$stopAccelerometerAsyncAction.run(() => super.stopAccelerometer());
  }

  final _$startGyroscopeAsyncAction =
      AsyncAction('_SensorsStore.startGyroscope');

  @override
  Future<dynamic> startGyroscope() {
    return _$startGyroscopeAsyncAction.run(() => super.startGyroscope());
  }

  final _$stopGyroscopeAsyncAction = AsyncAction('_SensorsStore.stopGyroscope');

  @override
  Future<dynamic> stopGyroscope() {
    return _$stopGyroscopeAsyncAction.run(() => super.stopGyroscope());
  }

  final _$startMagnetometerAsyncAction =
      AsyncAction('_SensorsStore.startMagnetometer');

  @override
  Future<dynamic> startMagnetometer() {
    return _$startMagnetometerAsyncAction.run(() => super.startMagnetometer());
  }

  final _$stopMagnetometerAsyncAction =
      AsyncAction('_SensorsStore.stopMagnetometer');

  @override
  Future<dynamic> stopMagnetometer() {
    return _$stopMagnetometerAsyncAction.run(() => super.stopMagnetometer());
  }

  final _$closeAsyncAction = AsyncAction('_SensorsStore.close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
accelerometerEvents: ${accelerometerEvents},
gyroscopeEvents: ${gyroscopeEvents},
magnetometerEvents: ${magnetometerEvents}
    ''';
  }
}
