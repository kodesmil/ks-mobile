import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc/grpc.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

import 'generated/notification.pbgrpc.dart';

part 'store.g.dart';

class NotificationsStore = _NotificationsStore with _$NotificationsStore;

abstract class _NotificationsStore with Store {
  final ErrorStore errorStore;
  final FirebaseAuth firebaseAuth;

  NotificationServiceClient client;

  _NotificationsStore(
    this.errorStore,
    this.firebaseAuth,
  ) {
    this.client = NotificationServiceClient(
      ClientChannel(
        'https://notifications.dev.api.kodesmil.com',
        port: 443,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
      options: CallOptions(
        timeout: Duration(seconds: 30),
      ),
    );
  }

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  ResponseStream<NotificationsListResponse> notifications;

  @observable
  NotificationReadResponse notification;

  @observable
  @action
  Future fetch() async {
    /*
    notifications = client.notificationsList(
      NotificationsListRequest(),
    );
    */
    final request = NotificationReadRequest()..id = "5e7bf879ae19ee478a38bd89";
    this.notification = await client.notificationRead(request);
    print(this.notification);
  }
}
