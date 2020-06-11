import 'package:feat_auth/feat_auth.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lib_shared/lib_shared.dart';
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
        Provider(
          create: (_) => FirebaseAuth.instance,
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
          update: (_, dep, dep2, __) => SignUpStore(
            ErrorStore(),
            SignUpErrorStore(),
            dep,
            dep2,
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
