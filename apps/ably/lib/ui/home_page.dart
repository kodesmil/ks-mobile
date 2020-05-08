import 'package:feat_journal/feat_journal.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              ProfileWidget(),
              NotificationsWidget(),
              JournalWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
