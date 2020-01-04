import 'package:module_auth/data/shared_preference_helper.dart';
import 'package:module_auth/data/token_api.dart';
import 'package:module_auth/data/user_api.dart';
import 'package:lib_di/di/modules/local_module.dart';
import 'package:lib_di/di/modules/netwok_module.dart';

class AuthNetworkModule extends NetworkModule {
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  UserApi provideUserApi() => UserApi(provideDioClient());
}

class AuthLocalModule extends LocalModule {
  SharedPreferenceHelper provideSharedPreferenceHelper() =>
      SharedPreferenceHelper(provideSharedPreferences());
}
