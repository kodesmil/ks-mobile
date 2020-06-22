import 'dart:async';

import 'package:ably/injector.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'routes.dart';

void realMain() async {
  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en_US',
    supportedLocales: ['en_US', 'nb_NO', 'pl_PL', 'te_IN', 'hi_IN'],
  );
  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: AppInjector(
        child: Consumer<AppStateNotifier>(
          builder: (context, appState, child) => MaterialApp(
            localizationsDelegates: [
              localizationDelegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: localizationDelegate.supportedLocales,
            theme: KsTheme.ablyLight(),
            darkTheme: KsTheme.ablyDark(),
            initialRoute: '/splash',
            routes: Routes.routes,
            themeMode: appState.mode,
          ),
        ),
      ),
    );
  }
}
