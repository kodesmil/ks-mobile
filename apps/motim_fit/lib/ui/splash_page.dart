import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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

  Future navigate() async {
    final storage = Provider.of<AuthStorage>(context);
    final onboardingDisplayed = await storage.onboardingDisplayed;
    await Navigator.of(context).pushReplacementNamed('/google_sign_in');
    if (!onboardingDisplayed) {
      await Navigator.of(context).pushReplacementNamed('/onboarding');
    } else {
      await Navigator.of(context).pushReplacementNamed('/login');
    }
  }
}
