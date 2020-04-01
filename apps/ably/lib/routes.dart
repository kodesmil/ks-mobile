import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_splash/feat_splash.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => HomePage(),
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/locations': (BuildContext context) => LocationsPage(),
    '/google-fit-integration': (BuildContext context) => GoogleSignInPage(),
  };
}
