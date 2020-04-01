import 'package:dio/dio.dart';
import 'package:feat_activities/feat_activities.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_survey/feat_survey.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
        Provider(
          create: (_) => AuthStorage(
            SharedPreferences.getInstance(),
          ),
        ),
        Provider(
          create: (_) => ActivitiesApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'http://activities.api.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => LocationsApi(
            DioClient(
              Dio()
                ..options.baseUrl = 'http://locations.api.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => TokenApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'https://auth.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => UserApi(
            DioClient(
              Dio()
                // ..options.baseUrl = 'http://10.0.2.2:5000'
                ..options.baseUrl = 'https://auth.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => SurveyApi(
            DioClient(
              Dio()
                ..options.baseUrl = 'http://10.0.2.2:5000'
                //..options.baseUrl = 'http://health-survey.api.kodesmil.com'
                // ..options.baseUrl = 'http://192.168.64.2:31908'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => GoogleSignIn(
            scopes: <String>[
              'email',
              'profile',
              'openid',
              'https://www.googleapis.com/auth/fitness.activity.read',
              'https://www.googleapis.com/auth/fitness.body.read',
              'https://www.googleapis.com/auth/fitness.location.read',
              'https://www.googleapis.com/auth/fitness.nutrition.read',
            ],
          ),
        ),
        ProxyProvider<GoogleSignIn, GoogleSignInStore>(
          update: (_, dep, __) => GoogleSignInStore(dep),
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
        ProxyProvider2<SurveyApi, AuthStorage, SurveyStore>(
          update: (_, dep, dep2, __) => SurveyStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider2<LocationsApi, AuthStorage, LocationsStore>(
          update: (_, dep, dep2, __) => LocationsStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
      ],
      child: child,
    );
  }
}
