import 'package:flutter/material.dart';
import 'package:module_auth/pages/login_page.dart';
import 'package:module_auth/pages/sign_up_page.dart';

import 'ui/home.dart';
import 'ui/splash.dart';
import 'ui/onboarding.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashScreen(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => HomePage(),
    '/onboarding': (BuildContext context) => OnboardingScreen(),
  };
}
