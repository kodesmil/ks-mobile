import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/buttons.dart';
import 'package:lib_lego/spaces.dart';
import 'package:feat_sensors/sensors_store.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Observer(
              builder: (context) {
                return Center(
                  child: Text(
                    'Started recording at ' +
                        DateFormat("yyyy-MM-dd HH:mm:ss").format(
                          _sensorsStore.gyroscopeEvents?.first?.recordedAt ??
                              DateTime.now(),
                        ),
                  ),
                );
              },
            ),
            KsSpace.xs(),
            Observer(
              builder: (context) {
                return Center(
                  child: Text(
                    'Iterations: ' +
                        _sensorsStore.gyroscopeEvents.length.toString(),
                  ),
                );
              },
            ),
            KsSpace.xs(),
            Observer(
              builder: (context) {
                return Container(
                  height: 300,
                  child: ListView(
                    children: _sensorsStore.gyroscopeEvents.reversed
                        .map((e) => Center(child: Text(e.toString())))
                        .toList(),
                  ),
                );
              },
            ),
            KsSpace.m(),
            KsRaisedButton(
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
