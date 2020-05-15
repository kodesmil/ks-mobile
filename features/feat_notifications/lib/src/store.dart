import 'dart:async';
import 'dart:math';

import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class NotificationsStore = _NotificationsStore with _$NotificationsStore;

abstract class _NotificationsStore with Store {
  final ErrorStore errorStore;

  NotificationSettingsClient nsClient;
  NotificationDevicesClient ndClient;

  _NotificationsStore(
    this.errorStore,
    this.nsClient,
    this.ndClient,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @action
  Future registerDeviceToken(String token) {
    final timestamp = Timestamp();
    final payload = NotificationDevice()
      ..createdAt = timestamp
      ..updatedAt = timestamp
      ..deviceToken = token;
    final request = CreateNotificationDeviceRequest()..payload = payload;
    return ndClient.create(request);
  }
}
