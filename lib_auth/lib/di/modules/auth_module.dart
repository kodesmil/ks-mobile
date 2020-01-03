import 'package:inject/inject.dart';
import 'package:lib_auth/di/data/network/apis/posts/token_api.dart';
import 'package:lib_auth/di/data/network/apis/posts/user_api.dart';
import 'package:lib_auth/di/data/sharedpref/shared_preference_helper.dart';
import 'package:lib_di/di/modules/local_module.dart';
import 'package:lib_di/di/modules/netwok_module.dart';

@module
class AuthNetworkModule extends NetworkModule {
  @provide
  @singleton
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  @provide
  @singleton
  UserApi provideUserApi() => UserApi(provideDioClient());
}

@module
class AuthLocalModule extends LocalModule {
  @provide
  @singleton
  SharedPreferenceHelper provideSharedPreferenceHelper() =>
      SharedPreferenceHelper(provideSharedPreferences());
}
