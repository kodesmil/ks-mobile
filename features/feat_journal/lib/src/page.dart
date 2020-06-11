import 'package:feat_journal/src/common.dart';
import 'package:feat_period/feat_period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'widgets/calendar.dart';
import 'widgets/day.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

enum Type { MONTH, DAY, EMPTY }

class _JournalPageState extends State<JournalPage> {
  int todayCount;

  PageAutoScrollController controllerDay;
  AutoScrollController controllerCalendar;

  @override
  void didChangeDependencies() {
    final store = Provider.of<PeriodStore>(context);
    store.fetchPeriodEntries();
    final now = DateTime.now();
    todayCount = now.difference(initialDate).inDays;
    controllerDay = PageAutoScrollController(
      initialPage: todayCount,
    );
    final size = MediaQuery.of(context).size;
    final itemHeight = (size.width - 40) / 7;
    final weeks = todayCount ~/ 7 - 1;
    controllerCalendar = AutoScrollController(
      initialScrollOffset: itemHeight * weeks,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KsAppBar(
        context: context,
        title: translate('g.journal'),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            physics: PageScrollPhysics(),
            controller: controllerDay,
            slivers: <Widget>[
              _DayWidget(
                controllerDay: controllerDay,
                controllerCalendar: controllerCalendar,
              ),
            ],
          ),
          Calendar(
            controllerDay: controllerDay,
            controllerCalendar: controllerCalendar,
          ),
        ],
      ),
    );
  }
}

class _DayWidget extends StatefulWidget {
  final PageAutoScrollController controllerDay;
  final AutoScrollController controllerCalendar;

  const _DayWidget({
    Key key,
    this.controllerDay,
    this.controllerCalendar,
  }) : super(key: key);

  @override
  __DayWidgetState createState() => __DayWidgetState();
}

class __DayWidgetState extends State<_DayWidget> {
  int todayCount;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(initialDate).inDays;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      sliver: SliverFillViewport(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return AutoScrollTag(
              key: ValueKey(index),
              controller: widget.controllerDay,
              index: index,
              child: SingleJournalPage(
                controllerDay: widget.controllerDay,
                controllerCalendar: widget.controllerCalendar,
                todayCount: todayCount,
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
