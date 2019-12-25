import 'dart:async';

import 'package:boilerplate/routes.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inject/inject.dart';

import 'constants/app_theme.dart';
import 'constants/strings.dart';
import 'di/components/app_component.dart';
import 'di/modules/local_module.dart';
import 'di/modules/netwok_module.dart';
import 'ui/splash/splash.dart';

// global instance for app component
// TODO find out a better way to use it across application
var appComponent;

void main() {
  // Set `enableInDevMode` to true to see reports while in debug mode
  // This is only to be used for confirming that reports are being
  // submitted as expected. It is not intended to be used for everyday
  // development.
  Crashlytics.instance.enableInDevMode = true;
  // Pass all uncaught errors to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runZoned(() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]).then((_) async {
      appComponent = await AppComponent.create(NetworkModule(), LocalModule());

      runApp(appComponent.app);
    });
  }, onError: Crashlytics.instance.recordError);
}

@provide
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: MfThemeData.lightThemeData,
      darkTheme: MfThemeData.darkThemeData,
      routes: Routes.routes,
      home: SplashScreen(),
    );
  }
}
