import 'package:flutter/material.dart';
import 'package:lib_auth/pages/sign_up_page.dart';
import 'package:lib_auth/pages/login_page.dart';
import 'package:lib_lego/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MfThemeData.light(),
      darkTheme: MfThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, cns) => Center(
          child: Container(
            width: cns.widthConstraints().biggest.width * 0.4,
            child: LoginScreen(),
            // child: SignUpScreen(),
          ),
        ),
      ),
    );
  }
}
