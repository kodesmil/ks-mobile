import 'package:ably/ui/hello_page.dart';
import 'package:feat_chat/feat_chat.dart';
import 'package:feat_feed/feat_feed.dart';
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
      StorageWidget(),
    ];
    return NotificationContainer(
      child: CupertinoTabScaffold(
        backgroundColor: Colors.black26,
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.black38,
          activeColor: Colors.black,
          inactiveColor: Colors.white,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.store)),
            BottomNavigationBarItem(icon: Icon(Icons.hot_tub)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.people)),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
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
    );
  }
}
