import 'package:feat_auth/pages/login_page.dart';
import 'package:feat_auth/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'ui/google_sign_in_page.dart';
import 'ui/home_page.dart';
import 'ui/onboarding_page.dart';
import 'ui/splash_page.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => HomePage(),
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/google-sign-in': (BuildContext context) => GoogleSignInPage(),
  };
}
