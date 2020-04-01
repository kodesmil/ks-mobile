import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/token.dart';

class AuthStorage {
  static const String ACCESS_TOKEN = 'accessToken';
  static const String REFRESH_TOKEN = 'refreshToken';
  static const String HAS_SEEN_ONBOARDING = 'hasSeenOnboarding';

  final Future<SharedPreferences> _sharedPreference;

  AuthStorage(this._sharedPreference);

  Future<void> saveAuthToken(Token token) async =>
      _sharedPreference.then((preference) {
        preference.setString(ACCESS_TOKEN, token.accessToken);
        preference.setString(REFRESH_TOKEN, token.refreshToken);
      });

  Future<void> removeAuthToken() async => _sharedPreference.then((p) {
        p.remove(ACCESS_TOKEN);
        p.remove(REFRESH_TOKEN);
      });

  Future<void> setHasSeenOnboarding() async => _sharedPreference.then((p) {
        p.setBool(HAS_SEEN_ONBOARDING, true);
      });

  Future<bool> get onboardingDisplayed async =>
      _sharedPreference.then((p) => p.getBool(HAS_SEEN_ONBOARDING) ?? false);

  Future<String> get accessToken async =>
      _sharedPreference.then((p) => p.getString(ACCESS_TOKEN) ?? '');

  Future<bool> get isLoggedIn async {
    return _sharedPreference.then(
      (p) => p.getString(ACCESS_TOKEN)?.isNotEmpty ?? false,
    );
  }
}
