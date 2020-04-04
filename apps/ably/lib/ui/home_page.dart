import 'package:feat_activities/feat_activities.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    final activitiesStore = Provider.of<ActivitiesStore>(context);
    final googleStore = Provider.of<GoogleSignInStore>(context);
    // googleStore.signInSilently();
    /*
    if (googleStore.currentUser != null) {
      activitiesStore.sendData();
    } else {
      ksNavigateAndRemoveUntil(context, '/google-fit-integration');
    }
     */
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationsWidget();
  }
}
