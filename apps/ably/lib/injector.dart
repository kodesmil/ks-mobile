import 'package:dio/dio.dart';
import 'package:feat_activities/feat_activities.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_feed/feat_feed.dart';
import 'package:feat_journal/feat_journal.dart';
import 'package:feat_locations/feat_locations.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:feat_survey/feat_survey.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInjector extends StatelessWidget {
  final Widget child;

  const AppInjector({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => FirebaseAuth.instance,
        ),
        Provider<UserStore>(
          create: (_) => UserStore(),
        ),
        Provider(
          create: (_) => AuthStorage(
            SharedPreferences.getInstance(),
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
        ProxyProvider2<FirebaseAuth, UserStore, LoginStore>(
          update: (_, dep, dep2, __) => LoginStore(
            ErrorStore(),
            LoginErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider2<FirebaseAuth, UserStore, SignUpStore>(
          update: (_, dep, dep2, __) =>
              SignUpStore(ErrorStore(), SignUpErrorStore(), dep, dep2),
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

class UserInjector extends StatelessWidget {
  final Widget child;
  final FirebaseUser user;

  const UserInjector({Key key, this.child, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user == null) return Container();

    final notificationsChannel = ClientChannel(
      'notifications.qa.api.kodesmil.com',
      port: 443,
      options: const ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );

    final channel = ClientChannel(
      'grpc-clinic.qa.api.kodesmil.com',
      port: 443,
      options: const ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );

    return FutureBuilder<IdTokenResult>(
      future: user.getIdToken(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Container();
        }
        final options = CallOptions(
          metadata: {'authorization': 'Bearer ${snap.data.token}'},
        );
        return MultiProvider(
          providers: [
            Provider(
              create: (_) => NotificationServiceClient(
                notificationsChannel,
              ),
            ),
            Provider(
              create: (_) => ProfilesClient(
                channel,
                options: options,
              ),
            ),
            Provider(
              create: (_) => JournalsClient(
                channel,
                options: options,
              ),
            ),
            Provider(
              create: (_) => GroupsClient(
                channel,
                options: options,
              ),
            ),
            Provider(
              create: (_) => FeedsClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider<NotificationServiceClient, NotificationsStore>(
              update: (_, dep, __) => NotificationsStore(
                ErrorStore(),
                dep,
              ),
            ),
            ProxyProvider<ProfilesClient, ProfileStore>(
              update: (_, dep, __) => ProfileStore(
                ErrorStore(),
                dep,
                user,
              ),
            ),
            ProxyProvider<JournalsClient, JournalStore>(
              update: (_, dep, __) => JournalStore(
                ErrorStore(),
                dep,
              ),
            ),
            ProxyProvider<FeedsClient, FeedStore>(
              update: (_, dep, __) => FeedStore(
                ErrorStore(),
                dep,
              ),
            ),
          ],
          child: child,
        );
      },
    );
  }
}
