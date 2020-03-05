import 'package:dio/dio.dart';
import 'package:feat_activities/activities_api.dart';
import 'package:feat_activities/activities_store.dart';
import 'package:feat_auth/data/auth_storage.dart';
import 'package:feat_auth/data/token_api.dart';
import 'package:feat_auth/data/user_api.dart';
import 'package:feat_auth/stores/google_sign_in_store.dart';
import 'package:feat_auth/stores/login_store.dart';
import 'package:feat_auth/stores/onboarding_store.dart';
import 'package:feat_auth/stores/sign_up_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Injector extends StatelessWidget {
  final Widget child;

  const Injector({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => AuthStorage(SharedPreferences.getInstance())),
        Provider(
          create: (_) => ActivitiesApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'http://activities.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => TokenApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'http://auth.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => UserApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'http://auth.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        ProxyProvider2<GoogleSignInStore, ActivitiesApi, ActivitiesStore>(
          update: (_, dep, dep2, __) => ActivitiesStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider3<TokenApi, UserApi, AuthStorage, LoginStore>(
          update: (_, dep, dep2, dep3, __) => LoginStore(
            ErrorStore(),
            LoginErrorStore(),
            dep,
            dep2,
            dep3,
          ),
        ),
        ProxyProvider3<TokenApi, UserApi, AuthStorage, SignUpStore>(
          update: (_, dep, dep2, dep3, __) => SignUpStore(
            ErrorStore(),
            SignUpErrorStore(),
            dep,
            dep2,
            dep3,
          ),
        ),
        ProxyProvider<AuthStorage, OnboardingStore>(
          update: (_, dep, __) => OnboardingStore(
            dep,
          ),
        ),
      ],
      child: child,
    );
  }
}
