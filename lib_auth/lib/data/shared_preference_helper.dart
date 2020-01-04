import 'dart:async';
import 'package:lib_auth/models/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  final Future<SharedPreferences> _sharedPreference;

  SharedPreferenceHelper(this._sharedPreference);

  Future<void> saveAuthToken(Token token) async =>
      _sharedPreference.then((preference) {
        preference.setString(Preferences.accessToken, token.accessToken);
        preference.setString(Preferences.refreshToken, token.refreshToken);
      });

  Future<void> removeAuthToken() async => _sharedPreference.then((p) {
        p.remove(Preferences.accessToken);
        p.remove(Preferences.refreshToken);
      });

  Future<bool> get isLoggedIn async => _sharedPreference.then(
        (p) => p.getString(Preferences.accessToken)?.isNotEmpty ?? false,
      );
}
