import 'dart:async';

import 'package:ably/injector.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:lib_lego/lib_lego.dart';

import 'routes.dart';

void realMain() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  if (kIsWeb) {
    runApp(MyApp());
  } else {
    runZoned(
      () {
        WidgetsFlutterBinding.ensureInitialized();
        runApp(MyApp());
      },
      onError: Crashlytics.instance.recordError,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppInjector(
      child: MaterialApp(
        localizationsDelegates: KsLoc.localizationsDelegates,
        supportedLocales: KsLoc.supportedLocales,
        theme: KsTheme.ablyLight(),
        darkTheme: KsTheme.ablyDark(),
        initialRoute: '/splash',
        routes: Routes.routes,
      ),
    );
  }
}
