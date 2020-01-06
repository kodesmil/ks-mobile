import 'package:app_kodesmil_legobook/lego_page.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/themes.dart';
import 'package:lib_locale/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DynamicTheme(
        data: (brightness) => KsTheme.motimLight(),
        themedWidgetBuilder: (context, theme) => MaterialApp(
          localizationsDelegates: KsLoc.localizationsDelegates,
          title: 'KodeSmil Lego',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: LegoPage(),
        ),
      );
}
