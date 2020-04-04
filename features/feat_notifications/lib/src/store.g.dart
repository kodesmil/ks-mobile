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

  final _$notificationsAtom = Atom(name: '_NotificationsStore.notifications');

  @override
  ResponseStream<NotificationsListResponse> get notifications {
    _$notificationsAtom.context.enforceReadPolicy(_$notificationsAtom);
    _$notificationsAtom.reportObserved();
    return super.notifications;
  }

  @override
  set notifications(ResponseStream<NotificationsListResponse> value) {
    _$notificationsAtom.context.conditionallyRunInAction(() {
      super.notifications = value;
      _$notificationsAtom.reportChanged();
    }, _$notificationsAtom, name: '${_$notificationsAtom.name}_set');
  }

  final _$notificationAtom = Atom(name: '_NotificationsStore.notification');

  @override
  NotificationReadResponse get notification {
    _$notificationAtom.context.enforceReadPolicy(_$notificationAtom);
    _$notificationAtom.reportObserved();
    return super.notification;
  }

  @override
  set notification(NotificationReadResponse value) {
    _$notificationAtom.context.conditionallyRunInAction(() {
      super.notification = value;
      _$notificationAtom.reportChanged();
    }, _$notificationAtom, name: '${_$notificationAtom.name}_set');
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  ObservableFuture<dynamic> fetch() {
    return ObservableFuture<dynamic>(
        _$fetchAsyncAction.run(() => super.fetch()));
  }
}
