import 'package:flutter/material.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:land_kodesmil/homepage_page.dart';
import 'package:lib_lego/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: KsLoc.localizationsDelegates,
      supportedLocales: KsLoc.supportedLocales,
      theme: KsTheme.kodesmilDark(),
      home: HomepagePage(),
    );
  }
}
