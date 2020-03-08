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
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_SensorsStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$accelerometerEventsAtom =
      Atom(name: '_SensorsStore.accelerometerEvents');

  @override
  List<AblySensorEvent> get accelerometerEvents {
    _$accelerometerEventsAtom.context
        .enforceReadPolicy(_$accelerometerEventsAtom);
    _$accelerometerEventsAtom.reportObserved();
    return super.accelerometerEvents;
  }

  @override
  set accelerometerEvents(List<AblySensorEvent> value) {
    _$accelerometerEventsAtom.context.conditionallyRunInAction(() {
      super.accelerometerEvents = value;
      _$accelerometerEventsAtom.reportChanged();
    }, _$accelerometerEventsAtom,
        name: '${_$accelerometerEventsAtom.name}_set');
  }

  final _$gyroscopeEventsAtom = Atom(name: '_SensorsStore.gyroscopeEvents');

  @override
  List<AblySensorEvent> get gyroscopeEvents {
    _$gyroscopeEventsAtom.context.enforceReadPolicy(_$gyroscopeEventsAtom);
    _$gyroscopeEventsAtom.reportObserved();
    return super.gyroscopeEvents;
  }

  @override
  set gyroscopeEvents(List<AblySensorEvent> value) {
    _$gyroscopeEventsAtom.context.conditionallyRunInAction(() {
      super.gyroscopeEvents = value;
      _$gyroscopeEventsAtom.reportChanged();
    }, _$gyroscopeEventsAtom, name: '${_$gyroscopeEventsAtom.name}_set');
  }

  final _$magnetometerEventsAtom =
      Atom(name: '_SensorsStore.magnetometerEvents');

  @override
  List<AblySensorEvent> get magnetometerEvents {
    _$magnetometerEventsAtom.context
        .enforceReadPolicy(_$magnetometerEventsAtom);
    _$magnetometerEventsAtom.reportObserved();
    return super.magnetometerEvents;
  }

  @override
  set magnetometerEvents(List<AblySensorEvent> value) {
    _$magnetometerEventsAtom.context.conditionallyRunInAction(() {
      super.magnetometerEvents = value;
      _$magnetometerEventsAtom.reportChanged();
    }, _$magnetometerEventsAtom, name: '${_$magnetometerEventsAtom.name}_set');
  }

  final _$sendAsEmailAsyncAction = AsyncAction('sendAsEmail');

  @override
  Future<dynamic> sendAsEmail() {
    return _$sendAsEmailAsyncAction.run(() => super.sendAsEmail());
  }

  final _$startAccelerometerAsyncAction = AsyncAction('startAccelerometer');

  @override
  Future<dynamic> startAccelerometer() {
    return _$startAccelerometerAsyncAction
        .run(() => super.startAccelerometer());
  }

  final _$stopAccelerometerAsyncAction = AsyncAction('stopAccelerometer');

  @override
  Future<dynamic> stopAccelerometer() {
    return _$stopAccelerometerAsyncAction.run(() => super.stopAccelerometer());
  }

  final _$startGyroscopeAsyncAction = AsyncAction('startGyroscope');

  @override
  Future<dynamic> startGyroscope() {
    return _$startGyroscopeAsyncAction.run(() => super.startGyroscope());
  }

  final _$stopGyroscopeAsyncAction = AsyncAction('stopGyroscope');

  @override
  Future<dynamic> stopGyroscope() {
    return _$stopGyroscopeAsyncAction.run(() => super.stopGyroscope());
  }

  final _$startMagnetometerAsyncAction = AsyncAction('startMagnetometer');

  @override
  Future<dynamic> startMagnetometer() {
    return _$startMagnetometerAsyncAction.run(() => super.startMagnetometer());
  }

  final _$stopMagnetometerAsyncAction = AsyncAction('stopMagnetometer');

  @override
  Future<dynamic> stopMagnetometer() {
    return _$stopMagnetometerAsyncAction.run(() => super.stopMagnetometer());
  }

  final _$closeAsyncAction = AsyncAction('close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
  }
}
