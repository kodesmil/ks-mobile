import 'package:feat_health/feat_health.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'widgets/day.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<MenstruationStore>(context);
    store.fetchPeriodEntries();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KsAppBar(
        context: context,
        title: translate('g.journal'),
      ),
      body: _DayWidget(),
    );
  }
}

class _DayWidget extends StatefulWidget {
  const _DayWidget({
    Key key,
  }) : super(key: key);

  @override
  __DayWidgetState createState() => __DayWidgetState();
}

class __DayWidgetState extends State<_DayWidget> {
  InfiniteScrollController _infiniteController;
  InfiniteScrollController _infiniteController2;

  LinkedScrollControllerGroup _controllers;
  double weekSize;

  @override
  void didChangeDependencies() {
    weekSize = MediaQuery.of(context).size.width / 7;
    _infiniteController = InfiniteScrollController();
    _infiniteController2 = InfiniteScrollController(
      initialScrollOffset: -3 * weekSize,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MenstruationStore>(context);
    return Column(
      children: [
        Container(
          height: weekSize * 1.5,
          child: InfiniteListView.builder(
            itemExtent: weekSize,
            scrollDirection: Axis.horizontal,
            controller: _infiniteController2,
            itemBuilder: (context, index) {
              final date =
              DateTime.now().toUtc().add(Duration(days: index)).toLocal();
              final entry = store.entriesByDay[DateFormat.yMd().format(date)];
              return Container(
                width: weekSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 8,
                ),
                child: SingleDay(
                  day: date,
                  entry: entry,
                  showMonth: true,
                  showWeekday: true,
                  interactive: false,
                ),
              );
            },
          ),
        ),
        Expanded(
          child: InfiniteListView.builder(
            physics: PageScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _infiniteController,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: SingleJournalPage(
                  index: index,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}