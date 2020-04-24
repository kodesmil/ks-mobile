// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationsStore on _NotificationsStore, Store {
  final _$successAtom = Atom(name: '_NotificationsStore.success');

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

  final _$loadingAtom = Atom(name: '_NotificationsStore.loading');

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

  final _$notificationAtom = Atom(name: '_NotificationsStore.notification');

  @override
  Notification get notification {
    _$notificationAtom.context.enforceReadPolicy(_$notificationAtom);
    _$notificationAtom.reportObserved();
    return super.notification;
  }

  @override
  set notification(Notification value) {
    _$notificationAtom.context.conditionallyRunInAction(() {
      super.notification = value;
      _$notificationAtom.reportChanged();
    }, _$notificationAtom, name: '${_$notificationAtom.name}_set');
  }

  final _$profileAtom = Atom(name: '_NotificationsStore.profile');

  @override
  Profile get profile {
    _$profileAtom.context.enforceReadPolicy(_$profileAtom);
    _$profileAtom.reportObserved();
    return super.profile;
  }

  @override
  set profile(Profile value) {
    _$profileAtom.context.conditionallyRunInAction(() {
      super.profile = value;
      _$profileAtom.reportChanged();
    }, _$profileAtom, name: '${_$profileAtom.name}_set');
  }

  final _$fetchByIdAsyncAction = AsyncAction('fetchById');

  @override
  Future<dynamic> fetchById() {
    return _$fetchByIdAsyncAction.run(() => super.fetchById());
  }

  final _$fetchAllAsyncAction = AsyncAction('fetchAll');

  @override
  Future<dynamic> fetchAll() {
    return _$fetchAllAsyncAction.run(() => super.fetchAll());
  }

  final _$createNotification2AsyncAction = AsyncAction('createNotification2');

  @override
  Future<dynamic> createNotification2() {
    return _$createNotification2AsyncAction
        .run(() => super.createNotification2());
  }

  final _$createNotificationAsyncAction = AsyncAction('createNotification');

  @override
  Future<dynamic> createNotification() {
    return _$createNotificationAsyncAction
        .run(() => super.createNotification());
  }
}
