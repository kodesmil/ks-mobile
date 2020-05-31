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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/icons/ic_launcher.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Swanly',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
