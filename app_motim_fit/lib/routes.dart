import 'package:flutter/material.dart';
import 'package:module_auth/pages/login_page.dart';
import 'package:module_auth/pages/sign_up_page.dart';

import 'ui/home.dart';
import 'ui/splash.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashScreen(),
    '/login': (BuildContext context) => LoginScreen(),
    '/sign-up': (BuildContext context) => SignUpScreen(),
    '/home': (BuildContext context) => MainCollapsingToolbar(),
  };
}
