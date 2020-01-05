import 'package:flutter/material.dart';
import 'package:module_auth/pages/login_page.dart';
import 'package:module_auth/pages/sign_up_page.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    'login': (BuildContext context) => Scaffold(
      body: LayoutBuilder(
        builder: (context, cns) => Center(
          child: Container(
            width: cns.widthConstraints().biggest.width * 0.4,
            child: LoginScreen(),
          ),
        ),
      ),
    ),
    'sign-up': (BuildContext context) => Scaffold(
      body: LayoutBuilder(
        builder: (context, cns) => Center(
          child: Container(
            width: cns.widthConstraints().biggest.width * 0.4,
            child: SignUpScreen(),
          ),
        ),
      ),
    ),
    'home': (BuildContext context) => Center(
          child: Text('Home'),
        ),
  };
}
