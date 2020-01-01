import 'package:boilerplate/data/network/apis/posts/post_api.dart';
import 'package:boilerplate/data/network/apis/posts/token_api.dart';
import 'package:boilerplate/data/network/apis/posts/user_api.dart';
import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:dio/dio.dart';
import 'package:inject/inject.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
class NetworkModule {
  /// A singleton dio provider.
  ///
  /// Calling it multiple times will return the same instance.
  @provide
  @singleton
  Dio provideDio() => Dio()
    ..options.baseUrl = Endpoints.baseUrl
    ..options.connectTimeout = Endpoints.connectionTimeout
    ..options.receiveTimeout = Endpoints.receiveTimeout
    ..interceptors.add(LogInterceptor(responseBody: true))
    ..interceptors.add(InterceptorsWrapper(onRequest: (Options options) async {
      // getting shared pref instance
      var prefs = await SharedPreferences.getInstance();

      // getting token
      var token = prefs.getString(Preferences.accessToken);

      if (token != null) {
        options.headers.putIfAbsent('Authorization', () => token);
      } else {
        print('Auth token is null');
      }
    }));

  /// A singleton dio_client provider.
  ///
  /// Calling it multiple times will return the same instance.
  @provide
  @singleton
  DioClient provideDioClient() => DioClient(provideDio());

  /// A singleton dio_client provider.
  ///
  /// Calling it multiple times will return the same instance.
  @provide
  @singleton
  RestClient provideRestClient() => RestClient();

  // Api Providers:-------------------------------------------------------------
  // Define all your api providers here
  /// A singleton post_api provider.
  ///
  /// Calling it multiple times will return the same instance.
  @provide
  @singleton
  PostApi providePostApi() => PostApi(provideDioClient(), provideRestClient());

  @provide
  @singleton
  TokenApi provideTokenApi() => TokenApi(provideDioClient());

  @provide
  @singleton
  UserApi provideUserApi() => UserApi(provideDioClient());

// Api Providers End:---------------------------------------------------------

}
