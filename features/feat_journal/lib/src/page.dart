import 'package:feat_health/feat_health.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:indexed_list_view/indexed_list_view.dart';

import 'widgets/day.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({
    Key key,
  }) : super(key: key);

  @override
  _JournalPageState createState() => _JournalPageState();
}

const kPageViewOffset = 1000;

class _JournalPageState extends State<JournalPage> {
  PageController _infiniteController;
  IndexedScrollController _infiniteController2;

  LinkedScrollControllerGroup _controllers;
  double weekSize;

  @override
  void didChangeDependencies() {
    weekSize = MediaQuery.of(context).size.width / 7;
    _infiniteController = PageController(initialPage: kPageViewOffset);
    _infiniteController2 = IndexedScrollController(
      initialIndex: kPageViewOffset - 3,
    );
    final store = Provider.of<MenstruationDailyEntryStore>(context);
    store.list();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MenstruationDailyEntryStore>(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: weekSize * 1.75,
            child: IndexedListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _infiniteController2,
              itemExtent: weekSize,
              itemBuilder: (context, index) {
                final date = DateTime.now()
                    .toUtc()
                    .add(Duration(days: index - kPageViewOffset))
                    .toLocal();
                final entry = store.entriesByDay[DateFormat.yMd().format(date)];
                return Container(
                  width: weekSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 20,
                  ),
                  child: SingleDay(
                    day: date,
                    entry: entry,
                    showMonth: false,
                    showWeekday: true,
                    interactive: false,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _infiniteController,
              onPageChanged: (page) {
                _infiniteController2.animateToIndex((page - 3));
              },
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleJournalPage(
                    index: index - kPageViewOffset,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
