import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    navigate();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
    );
  }

  navigate() async {
    final storage = Provider.of<AuthStorage>(context);
    final isLoggedIn = await storage.isLoggedIn;
    final hasSeenOnboarding = await storage.onboardingDisplayed;
    if (hasSeenOnboarding) {
      if (isLoggedIn) {
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    } else {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    }
  }
}
