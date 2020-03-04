import 'package:feat_auth/data/auth_storage.dart';
import 'package:feat_auth/data/token_api.dart';
import 'package:feat_auth/data/user_api.dart';
import 'package:lib_di/di/modules/local_module.dart';
import 'package:lib_di/di/modules/netwok_module.dart';

class AuthNetworkModule extends NetworkModule {
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  UserApi provideUserApi() => UserApi(provideDioClient());
}

class AuthLocalModule extends LocalModule {
  AuthStorage provideSharedPreferenceHelper() =>
      AuthStorage(provideSharedPreferences());
}
