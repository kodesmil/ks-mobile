import 'dart:async';

import 'package:feat_auth/models/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  static const String accessToken = 'accessToken';
  static const String refreshToken = 'refreshToken';
  static const String hasSeenOnboarding = 'hasSeenOnboarding';

  final Future<SharedPreferences> _sharedPreference;

  AuthStorage(this._sharedPreference);

  Future<void> saveAuthToken(Token token) async =>
      _sharedPreference.then((preference) {
        preference.setString(accessToken, token.accessToken);
        preference.setString(refreshToken, token.refreshToken);
      });

  Future<void> removeAuthToken() async => _sharedPreference.then((p) {
        p.remove(accessToken);
        p.remove(refreshToken);
      });

  Future<void> setHasSeenOnboarding() async => _sharedPreference.then((p) {
        p.setBool(hasSeenOnboarding, true);
      });

  Future<bool> get onboardingDisplayed async =>
      _sharedPreference.then((p) => p.getBool(hasSeenOnboarding) ?? false);

  Future<bool> get isLoggedIn async => _sharedPreference.then(
        (p) => p.getString(accessToken)?.isNotEmpty ?? false,
      );
}
