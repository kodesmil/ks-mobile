import 'package:feat_auth/feat_auth.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:flutter/material.dart';

import 'ui/home_page.dart';
import 'ui/splash_page.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/': (BuildContext context) => HomePage(),
    '/onboarding': (BuildContext context) => OnboardingPage(),
  };
}
