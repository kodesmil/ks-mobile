import 'package:feat_auth/feat_auth.dart';
import 'package:feat_chat/feat_chat.dart';
import 'package:feat_feed/feat_feed.dart';
import 'package:feat_journal/feat_journal.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInjector extends StatefulWidget {
  final Widget child;

  const AppInjector({Key key, this.child}) : super(key: key);

  @override
  _AppInjectorState createState() => _AppInjectorState();
}

class _AppInjectorState extends State<AppInjector> {
  final channel = ClientChannel(
    'grpc-clinic.qa.api.kodesmil.com',
    port: 443,
    options: const ChannelOptions(
      credentials: ChannelCredentials.secure(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider0(
          update: (_, __) => FirebaseAuth.instance,
        ),
        ProxyProvider<FirebaseAuth, UserStore>(
          update: (_, dep, old) {
            return old ?? UserStore(dep);
          },
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
        ProxyProvider<UserStore, CallOptions>(
          update: (_, store, __) {
            return CallOptions(
              providers: [
                (metadata, url) async {
                  if (store.user == null) return;
                  final idToken = await store.user.getIdToken();
                  metadata['authorization'] = 'Bearer ${idToken.token}';
                },
              ],
            );
          },
        ),
        ProxyProvider<CallOptions, NotificationSettingsClient>(
          update: (_, dep, __) => NotificationSettingsClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, NotificationDevicesClient>(
          update: (_, dep, __) => NotificationDevicesClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, ProfilesClient>(
          update: (_, dep, __) => ProfilesClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, JournalEntriesClient>(
          update: (_, dep, __) => JournalEntriesClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, JournalSubjectsClient>(
          update: (_, dep, __) => JournalSubjectsClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, GroupsClient>(
          update: (_, dep, __) => GroupsClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, FeedArticlesClient>(
          update: (_, dep, __) => FeedArticlesClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, FeedArticleDetailsClient>(
          update: (_, dep, __) => FeedArticleDetailsClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, FeedArticlesClient>(
          update: (_, dep, __) => FeedArticlesClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider<CallOptions, ChatClient>(
          update: (_, dep, __) => ChatClient(
            channel,
            options: dep,
          ),
        ),
        ProxyProvider2<UserStore, ProfilesClient, ProfileStore>(
          update: (_, dep, dep2, __) => ProfileStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
        ProxyProvider<NotificationDevicesClient, NotificationDevicesStore>(
          update: (_, dep, __) => NotificationDevicesStore(
            ErrorStore(),
            dep,
          ),
        ),
        ProxyProvider2<UserStore, NotificationSettingsClient, NotificationSettingsStore>(
          update: (_, dep, dep2, __) => NotificationSettingsStore(
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
        ProxyProvider2<UserStore, ChatClient, ChatStore>(
          update: (_, dep, dep2, __) => ChatStore(
            ErrorStore(),
            dep,
            dep2,
          ),
        ),
      ],
      child: widget.child,
    );
  }
}
