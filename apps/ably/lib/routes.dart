import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:feat_services/feat_services.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';

class Routes {
  static String root = '/';
  static String onboarding = '/onboarding';
  static String meetings = '/meetings/:roomId';
  static String sessions = '/sessions/:sessionId';

  static void configureRoutes(fluro.Router router) {
    router.define(root, handler: rootHandler);
    router.define(onboarding, handler: rootHandler);
    router.define(meetings, handler: meetingHandler);
    router.define(sessions, handler: sessionsHandler);
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
  handlerFunc: (context, params) => OnboardingPage(key: Key(Routes.onboarding)),
);

var meetingHandler = fluro.Handler(
  handlerFunc: (context, params) => MeetingPage(params['roomId'][0]),
);

var sessionsHandler = fluro.Handler(
  handlerFunc: (context, params) => ServiceSessionPage(
    UUIDValue()..value = params['sessionId'][0],
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
