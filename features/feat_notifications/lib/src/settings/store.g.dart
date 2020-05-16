// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationSettingsStore on _NotificationSettingsStore, Store {
  final _$settingAtom = Atom(name: '_NotificationSettingsStore.setting');

  @override
  NotificationSetting get setting {
    _$settingAtom.context.enforceReadPolicy(_$settingAtom);
    _$settingAtom.reportObserved();
    return super.setting;
  }

  @override
  set setting(NotificationSetting value) {
    _$settingAtom.context.conditionallyRunInAction(() {
      super.setting = value;
      _$settingAtom.reportChanged();
    }, _$settingAtom, name: '${_$settingAtom.name}_set');
  }

  final _$readOrCreateAsyncAction = AsyncAction('readOrCreate');

  @override
  Future<dynamic> readOrCreate() {
    return _$readOrCreateAsyncAction.run(() => super.readOrCreate());
  }

  final _$createAsyncAction = AsyncAction('create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  final _$updateAsyncAction = AsyncAction('update');

  @override
  Future<dynamic> update() {
    return _$updateAsyncAction.run(() => super.update());
  }
}