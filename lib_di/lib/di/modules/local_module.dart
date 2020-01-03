import 'dart:async';

import 'package:inject/inject.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
class LocalModule {
  @provide
  @singleton
  @asynchronous
  Future<SharedPreferences> provideSharedPreferences() async =>
      await SharedPreferences.getInstance();
}
