import 'package:feat_auth/pages/login_page.dart';
import 'package:feat_auth/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    '/login': (BuildContext context) => Scaffold(
          body: LayoutBuilder(
            builder: (context, cns) => Center(
              child: Container(
                width: cns.widthConstraints().biggest.width * 0.4,
                child: LoginPage(),
              ),
            ),
          ),
        ),
    '/sign-up': (BuildContext context) => Scaffold(
          body: LayoutBuilder(
            builder: (context, cns) => Center(
              child: Container(
                width: cns.widthConstraints().biggest.width * 0.4,
                child: SignUpPage(),
              ),
            ),
          ),
        ),
    '/home': (BuildContext context) => Center(
          child: Text('Home'),
        ),
  };
}
