import 'package:feat_auth/pages/login_page.dart';
import 'package:feat_auth/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'ui/splash.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/splash': (BuildContext context) => SplashPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/sign-up': (BuildContext context) => SignUpPage(),
    '/home': (BuildContext context) => HomePage(),
  };
}
