import 'dart:async';

import 'package:inject/inject.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'netwok_module.dart';

@module
class LocalModule extends NetworkModule {
  @provide
  @singleton
  @asynchronous
  Future<SharedPreferences> provideSharedPreferences() async =>
      await SharedPreferences.getInstance();
}
