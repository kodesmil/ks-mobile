import 'package:app_fotosmil_homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:lib_locale/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: KsLoc.localizationsDelegates,
      supportedLocales: KsLoc.supportedLocales,
      theme: MfThemeData.light(),
      home: HomepagePage(),
    );
  }
}
