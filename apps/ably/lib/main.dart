import 'dart:async';

import 'package:feat_activities/activities_api.dart';
import 'package:feat_activities/activities_store.dart';
import 'package:feat_auth/data/auth_storage.dart';
import 'package:feat_auth/stores/google_sign_in_store.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kodesmil_locale/localizations.dart';
import 'package:lib_lego/themes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return MultiProvider(
      providers: [
        Provider(create: (_) => AuthStorage(SharedPreferences.getInstance())),
        Provider(create: (_) => ActivitiesApi()),
        Provider(
          create: (_) => GoogleSignIn(
            scopes: <String>[
              'email',
              'profile',
              'openid',
              'https://www.googleapis.com/auth/fitness.activity.read',
              'https://www.googleapis.com/auth/fitness.body.read',
              'https://www.googleapis.com/auth/fitness.location.read',
              'https://www.googleapis.com/auth/fitness.nutrition.read',
            ],
          ),
        ),
        ProxyProvider<GoogleSignIn, GoogleSignInStore>(
          update: (_, dep, __) => GoogleSignInStore(dep),
        ),
        ProxyProvider2<GoogleSignInStore, ActivitiesApi, ActivitiesStore>(
          update: (_, dep, dep2, __) => ActivitiesStore(dep, dep2),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: KsLoc.localizationsDelegates,
        supportedLocales: KsLoc.supportedLocales,
        theme: KsTheme.ablyLight(),
        darkTheme: KsTheme.ablyDark(),
        initialRoute: '/google-sign-in',
        routes: Routes.routes,
      ),
    );
  }
}
