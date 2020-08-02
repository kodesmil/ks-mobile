import 'package:ably/ui/hello_page.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:feat_chat/feat_chat.dart';
import 'package:feat_feed/feat_feed.dart';
import 'package:feat_health/feat_health.dart';
import 'package:feat_journal/feat_journal.dart';
import 'package:feat_notifications/feat_notifications.dart';
import 'package:feat_profile/feat_profile.dart';
import 'package:feat_services/feat_services.dart';
import 'package:feat_splash/feat_splash.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppStateNotifier>(context);
    return appState.appMode == AppMode.client
        ? HomeClientPage()
        : HomeBusinessPage();
  }
}

class HomeClientPage extends StatefulWidget {
  const HomeClientPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeClientPageState();
}

class _HomeClientPageState extends State<HomeClientPage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<FeedStore>(context);
    store.fetchArticles('');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppStateNotifier>(context);
    final titles = [
      'Journal',
      'Hi!',
      'Chat',
      'Offers',
      'Archive',
    ];
    final pages = [
      SliverPage(child: JournalPage()),
      SliverPage(child: HelloPage()),
      SliverPage(child: ChatPage()),
      ServiceOfferContent(),
      ServiceSessionArchiveContent(),
    ];
    final items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        title: Text('Journal'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Feed'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        title: Text('Chat'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.card_travel),
        title: Text('Offers'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.archive),
        title: Text('Archive'),
      ),
    ];
    var theme = Theme.of(context).bottomNavigationBarTheme;
    return NotificationContainer(
      child: MenstruationPersonalInfoWidget(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: theme.backgroundColor,
            activeColor: theme.selectedItemColor,
            inactiveColor: theme.unselectedItemColor,
            currentIndex: 1,
            items: items,
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  child: CustomScrollView(
                    slivers: [
                      KsNavigationBar(
                        withBackgroundImage: false,
                        action: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Container(
                                child: ProfileAvatar(),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => ProfilePage(),
                              ),
                            );
                          },
                        ),
                        title: titles[index],
                      ),
                      pages[index],
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class HomeBusinessPage extends StatefulWidget {
  const HomeBusinessPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeBusinessPageState();
}

class _HomeBusinessPageState extends State<HomeBusinessPage> {
  @override
  Widget build(BuildContext context) {
    return ServiceApplicationListPage(
      navigationBar: KsNavigationBar(
        withBackgroundImage: false,
        action: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 40,
              height: 40,
              child: ProfileAvatar(),
            ),
          ),
          onTap: () {
            Navigator.of(context, rootNavigator: true).push(
              CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
        title: 'Services',
      ),
    );
  }
}
