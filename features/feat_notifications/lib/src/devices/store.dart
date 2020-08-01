import 'dart:async';
import 'dart:math';

import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class NotificationDevicesStore = _NotificationDevicesStore
    with _$NotificationDevicesStore;

abstract class _NotificationDevicesStore with Store {
  final ErrorStore errorStore;

  NotificationDevicesClient client;

  _NotificationDevicesStore(
    this.errorStore,
    this.client,
  );

  @action
  Future registerDeviceToken(String token) async {
    final payload = NotificationDevice()
      ..deviceToken = token;
    final request = CreateNotificationDeviceRequest()..payload = payload;
    try {
      await client.create(request);
    } catch (e) {
      print(e);
    }
  }
}
