import 'package:dio/dio.dart';
import 'package:feat_activities/feat_activities.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_survey/feat_survey.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:lib_di/lib_di.dart';
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
          create: (_) => FirebaseAuth.instance,
        ),
        Provider(
          create: (_) => AuthStorage(
            SharedPreferences.getInstance(),
          ),
        ),
        Provider(
          create: (_) => ActivitiesApi(
            DioClient(
              Dio()
                ..options.baseUrl = 'https://activities.qa.api.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        Provider(
          create: (_) => LocationsApi(
            DioClient(
              Dio()
                ..options.baseUrl = 'https://locations.qa.api.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
          ),
        ),
        ProxyProvider<FirebaseAuth, SurveyApi>(
          update: (_, dep, __) => SurveyApi(
            DioClient(
              Dio()
                ..options.baseUrl = 'https://survey.qa.api.kodesmil.com'
                ..interceptors.add(LogInterceptor(responseBody: true)),
            ),
            dep,
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
        ProxyProvider2<FirebaseAuth, AuthStorage, LoginStore>(
          update: (_, dep, dep2, __) => LoginStore(
            ErrorStore(),
            LoginErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider2<FirebaseAuth, AuthStorage, SignUpStore>(
          update: (_, dep, dep2, __) =>
              SignUpStore(ErrorStore(), SignUpErrorStore(), dep, dep2),
        ),
        ProxyProvider<FirebaseAuth, UserStore>(
          update: (_, dep, __) => UserStore(dep),
        ),
        ProxyProvider<AuthStorage, OnboardingStore>(
          update: (_, dep, __) => OnboardingStore(
            dep,
          ),
        ),
        ProxyProvider2<SurveyApi, FirebaseAuth, SurveyStore>(
          update: (_, dep, dep2, __) => SurveyStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider<FirebaseAuth, NotificationsStore>(
          update: (_, dep, __) => NotificationsStore(
            ErrorStore(),
            dep,
            NotificationServiceClient(
              ClientChannel(
                'notifications.qa.api.kodesmil.com',
                port: 443,
                options: const ChannelOptions(
                  credentials: ChannelCredentials.secure(),
                ),
              ),
              options: CallOptions(
                timeout: Duration(seconds: 30),
              ),
            ),
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
