import 'dart:async';
import 'dart:math';

import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class NotificationsStore = _NotificationsStore with _$NotificationsStore;

abstract class _NotificationsStore with Store {
  final ErrorStore errorStore;

  NotificationServiceClient client;

  _NotificationsStore(
    this.errorStore,
    this.client,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  Notification notification;

  ObservableStream<NotificationsListResponse> notifications;

  @action
  Future fetchById() async {
    final request = NotificationReadRequest()..id = '5e7bf879ae19ee478a38bd89';
    final response = await client.notificationRead(request);
    notification = response.notification;
  }

  @action
  Future fetchAll() async {
    final request = NotificationsListRequest();
    final response = client.notificationsList(request);
    notifications = response.asObservable();
  }

  @action
  Future createNotification() async {
    final notification = Notification.create()
      ..content = 'New notification: ${Random().nextInt(30)}'
      ..time = Timestamp.fromDateTime(DateTime.now());
    final request = NotificationCreateRequest.create()
      ..notification = notification;
    final response = await client.notificationCreate(request);
    this.notification = response.notification;
  }
}
