import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class LocalModule {
  Future<SharedPreferences> provideSharedPreferences() async =>
      await SharedPreferences.getInstance();
}
