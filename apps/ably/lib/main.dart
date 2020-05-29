import 'dart:async';

import 'package:ably/injector.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

void realMain() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runZoned(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(MyApp());
    },
    onError: Crashlytics.instance.recordError,
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AppInjector(
      child: Consumer<AppStateNotifier>(
        builder: (context, appState, child) => MaterialApp(
            localizationsDelegates: KsLoc.localizationsDelegates,
            supportedLocales: KsLoc.supportedLocales,
            theme: KsTheme.ablyLight(),
            darkTheme: KsTheme.ablyDark(),
            initialRoute: '/splash',
            routes: Routes.routes,
            themeMode: appState.mode,
          ),
      ),
    );
  }
}
