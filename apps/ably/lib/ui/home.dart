import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/buttons.dart';
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
        child: Column(
          children: <Widget>[
            Observer(
              builder: (context) {
                return Container(
                  height: 500,
                  child: ListView(
                    children: _sensorsStore.gyroscopeEvents
                        .map((e) => Text(e.toString()))
                        .toList(),
                  ),
                );
              },
            ),
            KsRoundedButton(
              text: 'Send as email',
              onPressed: () => _sensorsStore.sendAsEmail(),
            ),
          ],
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
