import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:module_sensors/sensors_store.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SensorsStore _sensorsStore = SensorsStore();

  _HomePageState();

  @override
  void initState() {
    _sensorsStore.startGyroscope();
    _sensorsStore.startAccelerometer();
    _sensorsStore.startMagnetometer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Observer(
          builder: (context) {
            return Text(_sensorsStore.gyroscopeEvent.accuracy.toString());
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sensorsStore.close();
    super.dispose();
  }
}
