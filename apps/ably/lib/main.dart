import 'dart:async';

import 'package:ably/injector.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ks_locale/ks_locale.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes.dart';

class CustomNetworkFileTranslationLoader extends NetworkFileTranslationLoader {
  CustomNetworkFileTranslationLoader({baseUri}) : super(baseUri: baseUri);
}

void realMain() async {
  final flutterI18nDelegate = FlutterI18nDelegate(
    translationLoader: NetworkFileTranslationLoader(
      baseUri: Uri.https(
        'storage.cloud.google.com',
        'ks-translations',
      ),
      useCountryCode: true,
    ),
  );

  await flutterI18nDelegate.load(null);

  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runZoned(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(MyApp(flutterI18nDelegate));
    },
    onError: Crashlytics.instance.recordError,
  );
}

class MyApp extends StatefulWidget {
  MyApp(this.flutterI18nDelegate);

  final FlutterI18nDelegate flutterI18nDelegate;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AppInjector(
      child: Consumer<AppStateNotifier>(
        builder: (context, appState, child) => MaterialApp(
          localizationsDelegates: [
            widget.flutterI18nDelegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: [
            Locale('en'),
            Locale('nb', 'NO'),
            Locale('pl', 'PL'),
            Locale('te', 'IN'),
            Locale('hi', 'IN'),
          ],
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
