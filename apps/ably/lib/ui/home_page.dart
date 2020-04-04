import 'package:feat_locations/feat_locations.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    //final activitiesStore = Provider.of<ActivitiesStore>(context);
    //final googleStore = Provider.of<GoogleSignInStore>(context);
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
    return Scaffold(
      body: Center(
        heightFactor: 0.75,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Aa'),
              LocationsWidget(),
              NotificationsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
