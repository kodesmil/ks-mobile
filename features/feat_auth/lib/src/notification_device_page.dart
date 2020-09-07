import 'dart:io';

import 'package:feat_auth/src/notification_device_store.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'profile_store.dart';

class NotificationContainer extends StatefulWidget {
  final Widget child;

  const NotificationContainer({Key key, this.child}) : super(key: key);

  @override
  _NotificationContainerState createState() => _NotificationContainerState();
}

Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  print("Background!");
  print(message);
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
    print(data);
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
    print(message);
  }
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  void didChangeDependencies() {
    if (!kIsWeb) {
      final _firebaseMessaging = FirebaseMessaging();
      final store =
          Provider.of<NotificationDevicesStore>(context, listen: false);
      _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('onMessage: $message');
        },
        onBackgroundMessage: myBackgroundMessageHandler,
        onLaunch: (Map<String, dynamic> message) async {
          print('onLaunch: $message');
        },
        onResume: (Map<String, dynamic> message) async {
          print('onResume: $message');
          await Navigator.pushNamed(context, message['data']['route']);
        },
      );
      _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
          sound: true,
          badge: true,
          alert: true,
          provisional: true,
        ),
      );
      _firebaseMessaging.getToken().then((String token) {
        assert(token != null);
        store.registerDeviceToken(token);
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
