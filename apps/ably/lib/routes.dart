import 'package:ably/ui/home_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_onboarding/feat_onboarding.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Routes {
  static String root = '/';
  static String onboarding = '/onboarding';
  static String meeting = '/meeting';

  static void configureRoutes(Router router) {
    router.define(root, handler: rootHandler);
    router.define(onboarding, handler: rootHandler);
    router.define(meeting, handler: meetingHandler);
  }
}

var rootHandler = Handler(
  handlerFunc: (context, params) => authGuarded(
    context,
    params,
    HomePage(
      key: Key(Routes.root),
    ),
  ),
);

var onboardingHandler = Handler(
  handlerFunc: (context, params) => authGuarded(
    context,
    params,
    OnboardingPage(
      key: Key(Routes.onboarding),
    ),
  ),
);

var meetingHandler = Handler(
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
) {
  final store = Provider.of<UserStore>(context);
  if (store.user != null) {
    return page;
  }
  store.signInSilently();
  return StreamBuilder(
    stream: store.output,
    builder: (context, snap) {
      if (snap.hasData) {
        return page;
      } else {
        return LoginPage();
      }
    },
  );
}
