import 'package:flutter/material.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:lib_lego/themes.dart';

import 'homepage_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: KsLoc.localizationsDelegates,
      supportedLocales: KsLoc.supportedLocales,
      theme: KsTheme.fotosmilLight(),
      home: HomepagePage(),
    );
  }
}
