import 'dart:async';
import 'dart:math';

import 'package:feat_notifications/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:feat_notifications/src/generated/service.pb.dart';
import 'package:feat_notifications/src/generated/service.pbgrpc.dart';
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
  ProfilesClient pClient;

  _NotificationsStore(
    this.errorStore,
    this.firebaseAuth,
    this.client,
  ) {

  }

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  Notification notification;

  @observable
  Profile profile;

  ObservableStream<NotificationsListResponse> notifications;

  @action
  Future fetchById() async {
    final request = NotificationReadRequest()..id = "5e7bf879ae19ee478a38bd89";
    final response = await client.notificationRead(request);
    this.notification = response.notification;
  }

  @action
  Future fetchAll() async {
    final request = NotificationsListRequest();
    final response = client.notificationsList(request);
    this.notifications = response.asObservable();
  }

  @action
  Future createNotification2() async {
    final user = await firebaseAuth.currentUser();
    final notification = Notification.create()
      ..content = 'New notification: ${Random().nextInt(30)}'
      ..userId = user.uid
      ..time = Timestamp.fromDateTime(DateTime.now());
    final request = NotificationCreateRequest.create()
      ..notification = notification;
    final response = await client.notificationCreate(request);
    this.notification = response.notification;
  }

  @action
  Future createNotification() async {
    final user = await firebaseAuth.currentUser();
    final token = await user.getIdToken();
    this.pClient = ProfilesClient(
      ClientChannel(
        'grpc-clinic.qa.api.kodesmil.com',
        port: 443,
        options: const ChannelOptions(
          credentials: ChannelCredentials.secure(),
        ),
      ),
      options: CallOptions(
          timeout: Duration(seconds: 30),
          metadata: {
            'authorization': 'Bearer ${token.token}'
          }
      ),
    );
    final profile = Profile.create()
    ..notes = 'Jada'
    ..name = 'MarcinjANO Ano';
    final request = CreateProfileRequest.create()
      ..payload = profile;
    final response = await pClient.create(request);
    this.profile = response.result;
  }
}
