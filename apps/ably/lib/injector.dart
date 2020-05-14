import 'package:dio/dio.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_feed/feat_feed.dart';
import 'package:feat_journal/feat_journal.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:feat_splash/feat_splash.dart';
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

class AppInjector extends StatefulWidget {
  final Widget child;

  const AppInjector({Key key, this.child}) : super(key: key);

  @override
  _AppInjectorState createState() => _AppInjectorState();
}

class _AppInjectorState extends State<AppInjector> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider0(
          update: (_, __) => FirebaseAuth.instance,
        ),
        ProxyProvider<FirebaseAuth, UserStore>(
          update: (_, dep, __) => UserStore(dep),
        ),
        ProxyProvider0(
          update: (_, __) => AuthStorage(
            SharedPreferences.getInstance(),
          ),
        ),
        ProxyProvider0(
          update: (_, __) => GoogleSignIn(
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
      child: Observer(
        builder: (context) {

        },
      ),
    );
  }
}

class UserInjector extends StatefulWidget {
  final Widget child;
  final FirebaseUser user;

  const UserInjector({Key key, this.child, this.user}) : super(key: key);

  @override
  _UserInjectorState createState() => _UserInjectorState();
}

class _UserInjectorState extends State<UserInjector> {
  @override
  Widget build(BuildContext context) {
    if (widget.user == null) return SplashPage();

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
      future: widget.user.getIdToken(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return SplashPage();
        }
        final options = CallOptions(
          metadata: {
            'authorization': 'Bearer ${snap.data.token}',
          },
        );
        return MultiProvider(
          providers: [
            ProxyProvider0(
              update: (_, __) => NotificationServiceClient(
                notificationsChannel,
              ),
            ),
            ProxyProvider0(
              update: (_, __) => ProfilesClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider0(
              update: (_, __) => JournalEntriesClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider0(
              update: (_, __) => JournalSubjectsClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider0(
              update: (_, __) => GroupsClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider0(
              update: (_, __) => FeedArticlesClient(
                channel,
                options: options,
              ),
            ),
            ProxyProvider2<UserStore, ProfilesClient, ProfileStore>(
              update: (_, dep, dep2, __) => ProfileStore(
                ErrorStore(),
                dep,
                dep2,
              ),
            ),
            ProxyProvider2<JournalSubjectsClient, JournalEntriesClient,
                JournalStore>(
              update: (_, dep, dep2, __) => JournalStore(
                ErrorStore(),
                dep,
                dep2,
              ),
            ),
            ProxyProvider<FeedArticlesClient, FeedStore>(
              update: (_, dep, __) => FeedStore(
                ErrorStore(),
                dep,
              ),
            ),
          ],
          child: widget.child,
        );
      },
    );
  }
}
