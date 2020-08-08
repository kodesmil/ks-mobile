import 'package:feat_auth/feat_auth.dart';
import 'package:feat_auth/src/profile_store.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<ProfileStore>(context);
    store.fetchOrCreateProfile();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ProfileStore>(context);
    final appState = Provider.of<AppStateNotifier>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Profile'),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  KsSpace.xs(),
                  ProfileSettingsTile(),
                  NotificationsSettings(),
                  ListTile(
                    leading: Text(
                      'Application',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SwitchListTile(
                    title: Text(
                      'Dark Theme',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    value: appState != null
                        ? appState.themeMode == ThemeMode.dark
                        : Brightness.dark == Theme.of(context).brightness,
                    onChanged: (value) {
                      appState.updateTheme(
                        value ? ThemeMode.dark : ThemeMode.light,
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      appState.appMode == AppMode.client
                          ? 'Show business mode'
                          : 'Show client mode',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onTap: () {
                      appState.updateAppMode(
                        appState.appMode == AppMode.client
                            ? AppMode.business
                            : AppMode.client,
                      );
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Text(
                      'Support',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Email support',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onTap: () =>
                        openUrl('mailto:hello@kodesmil.com?subject=Hello'),
                  ),
                  ListTile(
                    leading: Text(
                      'Privacy Policy',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Terms & Conditions',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Delete account',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onTap: () async {
                      await store.deleteProfile();
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Text(
                      'Sign out',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onTap: () async {
                      await store.signOut();
                      Navigator.of(context).pop();
                    },
                  ),
                  KsSpace.l(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
