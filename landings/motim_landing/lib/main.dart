import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:motim_landing/routes.dart';

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
      initialRoute: '/login',
    );
  }
}
