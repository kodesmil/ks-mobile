import 'package:flutter/material.dart';

import '../di/app_component.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
    );
  }

  navigate() async {
    final helper = authLocalModule.provideSharedPreferenceHelper();
    final isLoggedIn = await helper.isLoggedIn;
    if (isLoggedIn) {
      Navigator.of(context).pushReplacementNamed('home');
    } else {
      Navigator.of(context).pushReplacementNamed('login');
    }
  }
}
