import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:lib_lego/themes.dart';
import 'package:motim_fit/injector.dart';

import 'routes.dart';

void main() async {
  await DotEnv().load('.env');
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
    throw Injector(
      child: MaterialApp(
        localizationsDelegates: KsLoc.localizationsDelegates,
        supportedLocales: KsLoc.supportedLocales,
        theme: KsTheme.motimLight(),
        darkTheme: KsTheme.motimDark(),
        initialRoute: '/google-sign-in',
        routes: Routes.routes,
      ),
    );
  }
}
