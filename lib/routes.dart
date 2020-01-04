import 'package:boilerplate/ui/home.dart';
import 'package:boilerplate/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:lib_auth/pages/login_page.dart';
import 'package:lib_auth/pages/sign_up_page.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    'splash': (BuildContext context) => SplashScreen(),
    'login': (BuildContext context) => LoginScreen(),
    'sign-up': (BuildContext context) => SignUpScreen(),
//    home: (BuildContext context) => HomeScreen(),
    'home': (BuildContext context) => MainCollapsingToolbar(),
  };
}
