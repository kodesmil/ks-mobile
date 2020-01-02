import 'package:inject/inject.dart';
import 'package:lib_auth/di/data/network/apis/posts/token_api.dart';
import 'package:lib_auth/di/data/network/apis/posts/user_api.dart';
import 'package:lib_di/di/modules/netwok_module.dart';

@module
class AuthModule extends NetworkModule {

  @provide
  @singleton
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  @provide
  @singleton
  UserApi provideUserApi() => UserApi(provideDioClient());

}
