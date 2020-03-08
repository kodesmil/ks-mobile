import 'package:feat_activities/feat_activities.dart';
import 'package:feat_auth/pages/google_sign_in_page.dart';
import 'package:feat_auth/pages/login_page.dart';
import 'package:feat_auth/pages/sign_up_page.dart';
import 'package:feat_health_survey/feat_health_survey.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_splash/feat_splash.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/sensors': (BuildContext context) => ActivitiesPage(),
    '/home': (BuildContext context) => HealthSurveyPage(),
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/google-sign-in': (BuildContext context) => GoogleSignInPage(),
  };
}
