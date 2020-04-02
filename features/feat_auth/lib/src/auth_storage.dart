import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  static const String ACCESS_TOKEN = 'accessToken';
  static const String REFRESH_TOKEN = 'refreshToken';
  static const String HAS_SEEN_ONBOARDING = 'hasSeenOnboarding';

  final Future<SharedPreferences> _sharedPreference;

  AuthStorage(this._sharedPreference);

  Future<void> setHasSeenOnboarding() async => _sharedPreference.then((p) {
        p.setBool(HAS_SEEN_ONBOARDING, true);
      });

  Future<bool> get onboardingDisplayed async =>
      _sharedPreference.then((p) => p.getBool(HAS_SEEN_ONBOARDING) ?? false);
}
