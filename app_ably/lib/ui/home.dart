import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    return Container();
  }
}
