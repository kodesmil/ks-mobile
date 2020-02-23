import 'package:lib_di/di/features/local_module.dart';
import 'package:lib_di/di/features/netwok_module.dart';
import 'package:feat_auth/data/shared_preference_helper.dart';
import 'package:feat_auth/data/token_api.dart';
import 'package:feat_auth/data/user_api.dart';

class AuthNetworkModule extends NetworkModule {
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  UserApi provideUserApi() => UserApi(provideDioClient());
}

class AuthLocalModule extends LocalModule {
  SharedPreferenceHelper provideSharedPreferenceHelper() =>
      SharedPreferenceHelper(provideSharedPreferences());
}
