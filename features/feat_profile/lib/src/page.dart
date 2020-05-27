import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_profile/feat_profile.dart';
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
    store.fetchProfile();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ProfileStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Profile',
              style: Theme.of(context).textTheme.headline5,
            ),
            backgroundColor: Colors.black26,
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  KsSpace.xs(),
                  NotificationsSettings(),
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
                      await store.deleteUser();
                      await Navigator.of(context).pushReplacementNamed('/splash');
                    },
                  ),
                  ListTile(
                    leading: Text(
                      'Sign out',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onTap: () async {
                      await store.signOut();
                      await Navigator.of(context).pushReplacementNamed('/splash');
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

Future newPageStart(BuildContext context) {
  return Navigator.of(context).push(
    CupertinoPageRoute<void>(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('New Ome'),
          ),
          child: Center(
            child: CupertinoButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        );
      },
    ),
  );
}
