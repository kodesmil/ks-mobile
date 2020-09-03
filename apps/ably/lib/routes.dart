import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Routes {
  static String root = '/';
  static String onboarding = '/onboarding';
  static String meeting = '/meeting';

  static void configureRoutes(fluro.Router router) {
    router.define(root, handler: rootHandler);
    router.define(onboarding, handler: rootHandler);
    router.define(meeting, handler: meetingHandler);
  }
}

var rootHandler = fluro.Handler(
  handlerFunc: (context, params) => authGuarded(
    context,
    params,
    HomePage(
      key: Key(Routes.root),
    ),
  ),
);

var onboardingHandler = fluro.Handler(
  handlerFunc: (context, params) => authGuarded(
    context,
    params,
    OnboardingPage(
      key: Key(Routes.onboarding),
    ),
  ),
);

var meetingHandler = fluro.Handler(
  handlerFunc: (context, params) => authGuarded(
    context,
    params,
    MeetingPage(
      key: Key(Routes.meeting),
    ),
  ),
);

Widget authGuarded(
  BuildContext context,
  Map<String, List<String>> params,
  Widget page,
) =>
    StreamBuilder(
      stream: Provider.of<UserStore>(context).firebaseAuth.authStateChanges(),
      builder: (context, snap) {
        if (snap.data != null) {
          return page;
        } else {
          return LoginPage();
        }
      },
    );
