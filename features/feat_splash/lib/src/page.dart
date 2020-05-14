import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Center(
          child: Container(
            child: Image.asset(
              'assets/images/women/dancing.png',
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
        ),
      ),
    );
  }
}
