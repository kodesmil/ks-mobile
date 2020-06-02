import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'widgets/calendar.dart';
import 'widgets/day.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

enum Type { MONTH, DAY, EMPTY }

class _JournalPageState extends State<JournalPage> {
  final weekDays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  final df = DateFormat().add_MMM();
  final start = DateTime(2018);

  int todayCount;

  PageAutoScrollController controllerDay;
  AutoScrollController controllerCalendar;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(start).inDays;
    controllerDay = PageAutoScrollController(
      initialPage: todayCount,
      viewportFraction: 0.75,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
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
      body: Stack(
        children: [
          CustomScrollView(
            physics: PageScrollPhysics(),
            controller: controllerDay,
            slivers: <Widget>[
              KsNavigationBar(title: 'Journal'),
              _DayWidget(
                controllerDay: controllerDay,
                controllerCalendar: controllerCalendar,
              ),
            ],
          ),
          Calendar(
            weekDays: weekDays,
            start: start,
            df: df,
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
  final start = DateTime(2018);
  int todayCount;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(start).inDays;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillViewport(
      viewportFraction: 0.75,
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: widget.controllerDay,
            index: index,
            child: SingleJournalPage(
              controllerDay: widget.controllerDay,
              controllerCalendar: widget.controllerCalendar,
              start: start,
              todayCount: todayCount,
              index: index,
            ),
          );
        },
      ),
    );
  }
}