import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:lib_auth/pages/login_page.dart';
import 'package:lib_auth/pages/sign_up_page.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/sign-up';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    signUp: (BuildContext context) => SignUpScreen(),
//    home: (BuildContext context) => HomeScreen(),
    home: (BuildContext context) => MainCollapsingToolbar(),
  };
}
