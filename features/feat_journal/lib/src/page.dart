import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'dart:math' as math;
import 'package:scroll_to_index/scroll_to_index.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

enum Type { MONTH, DAY, EMPTY }

class _Tile {
  final Type type;
  final DateTime time;
  final int verticalSpan;

  _Tile(this.type, this.time, this.verticalSpan);
}

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
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: widget.controllerDay,
            index: index,
            child: Padding(
              padding: EdgeInsets.only(bottom: 25, right: 25, left: 25),
              child: Container(
                decoration: BoxDecoration(
                  // color: Theme.of(context).colorScheme.surface,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      spreadRadius: 0.01,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        DateFormat.yMMMMEEEEd().format(start.add(Duration(
                          days: index,
                        ))),
                        style: Theme.of(context).textTheme.subtitle1.copyWith(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: OutlineButton(
                          child: Text('Travel in time'),
                          onPressed: () {
                            widget.controllerDay.jumpToPage(100);
                            widget.controllerCalendar.scrollToIndex(100);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: OutlineButton(
                          child: Text('Jump to now'),
                          onPressed: () {
                            widget.controllerDay.jumpToPage(todayCount);
                            widget.controllerCalendar.scrollToIndex(todayCount);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({
    Key key,
    @required this.weekDays,
    @required this.df,
    @required this.controllerDay,
    @required this.controllerCalendar,
    this.start,
  }) : super(key: key);

  final List<String> weekDays;
  final DateFormat df;
  final DateTime start;
  final PageAutoScrollController controllerDay;
  final AutoScrollController controllerCalendar;

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int todayCount;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(widget.start).inDays;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.075,
      maxChildSize: 0.4,
      minChildSize: 0.075,
      builder: (BuildContext context, ScrollController scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Calendar',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 5,
                left: 5,
              ),
              margin: EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    spreadRadius: 0.25,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: widget.weekDays
                    .map(
                      (e) => Center(
                        child: Text(
                          e,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(),
            Material(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                child: CustomScrollView(
                  controller: widget.controllerCalendar,
                  slivers: [
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 7,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final date = widget.start.add(Duration(
                            days: index,
                          ));
                          return AutoScrollTag(
                            key: ValueKey(index),
                            controller: widget.controllerCalendar,
                            index: index,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              child: InkWell(
                                splashColor: Colors.black12,
                                onTap: () {
                                  widget.controllerDay.jumpToPage(index);
                                },
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: [6, 7].contains(date.weekday)
                                        ? Color(0xFFFFEEEE)
                                        : Colors.white,
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.elliptical(10, 10),
                                      top: Radius.elliptical(2, 2),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: date.isToday()
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.3)
                                            : Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.1),
                                        spreadRadius: 0.25,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        date.day.toString(),
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                      Text(
                                        widget.df.format(date).toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(fontSize: 7),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
