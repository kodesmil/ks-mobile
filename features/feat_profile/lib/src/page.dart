import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Profile',
              style: Theme.of(context).textTheme.headline5,
            ),
            middle: Container(),
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  KsSpace.xs(),
                  ListTile(
                    leading: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SwitchListTile(
                    value: true,
                    title: Text(
                      'Send me notifications',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onChanged: (value) {},
                  ),
                  ListTile(
                    leading: Text(
                      'Reminders',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SwitchListTile(
                    value: true,
                    title: Text(
                      'Daily Journal',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    onChanged: (value) {},
                  ),
                  ListTile(
                    leading: Text(
                      'Reminder time',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
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
                  ),
                  ListTile(
                    leading: Text(
                      'Sign out',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
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
