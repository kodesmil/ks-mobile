import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_splash/feat_splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'injector.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => Observer(builder: (context) {
          final userStore = Provider.of<UserStore>(context);
          final user = userStore.user;
          return UserInjector(
            child: HomePage(),
            user: user
          );
        }),
    '/onboarding': (BuildContext context) => OnboardingPage(),
  };
}
