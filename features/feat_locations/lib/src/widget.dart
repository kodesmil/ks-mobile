import 'package:flutter/material.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;
import 'package:provider/provider.dart';

import 'store.dart';

class LocationsWidget extends StatefulWidget {
  LocationsWidget();

  @override
  _LocationsWidgetState createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<LocationsStore>(context);
    bg.BackgroundGeolocation.onLocation((bg.Location location) {
      store.postLocation(location);
      print('[location] - $location');
    });

    bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
      store.postLocation(location);
      print('[motionchange] - $location');
    });

    bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
      print('[providerchange] - $event');
    });

    bg.BackgroundGeolocation.ready(bg.Config(
            enableHeadless: true,
            desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
            distanceFilter: 20.0,
            stopOnTerminate: false,
            startOnBoot: true,
            debug: true,
            logLevel: bg.Config.LOG_LEVEL_VERBOSE))
        .then((bg.State state) {
      if (!state.enabled) {
        bg.BackgroundGeolocation.start();
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<LocationsStore>(context);
    return Column(
      children: <Widget>[],
    );
  }
}
