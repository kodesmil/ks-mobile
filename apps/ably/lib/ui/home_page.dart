import 'package:ably/ui/hello_page.dart';
import 'package:feat_chat/feat_chat.dart';
import 'package:feat_feed/feat_feed.dart';
import 'package:feat_health/feat_health.dart';
import 'package:feat_journal/feat_journal.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<FeedStore>(context);
    store.fetchArticles('');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      ProfilePage(),
      JournalPage(),
      HelloPage(),
      ChatPage(),
    ];
    final store = Provider.of<StorageStore>(context);
    return NotificationContainer(
      child: MenstruationPersonalInfoWidget(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            activeColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            inactiveColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            currentIndex: 1,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text('Journal')),
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Feed')),
              BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('Chat')),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return pages[index];
              },
            );
          },
        ),
      ),
    );
  }
}
