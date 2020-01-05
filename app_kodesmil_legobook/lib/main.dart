import 'package:app_kodesmil_legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:lib_locale/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: KsLoc.localizationsDelegates,
      title: 'KodeSmil Lego',
      theme: KsTheme.motimLight(),
      home: LegoPage(),
    );
  }
}
