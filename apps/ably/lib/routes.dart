import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_splash/feat_splash.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'injector.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) {
      final store = Provider.of<UserStore>(context);
      return FutureBuilder<FirebaseUser>(
        future: store.signInSilently(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            return FutureBuilder(
              future: Future.delayed(Duration.zero, () {
                return Navigator.of(context).pushReplacementNamed(
                  snap.data == null ? '/login' : '/home',
                );
              }),
              builder: (context, snap) => SplashPage(),
            );
          }
          return SplashPage();
        },
      );
    },
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => HomePage(),
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/meeting': (context) => MeetingPage(),
  };
}
