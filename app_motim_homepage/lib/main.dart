import 'package:app_motim_homepage/routes.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motim FIt',
      routes: Routes.routes,
      theme: KsTheme.motimLight(),
      // darkTheme: MfThemeData.dark(),
      darkTheme: KsTheme.motimDark(),
      initialRoute: 'login',
    );
  }
}
