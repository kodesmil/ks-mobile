import 'package:flutter/material.dart';

import '../di/app_component.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    });
    // navigate();
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
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }
}
