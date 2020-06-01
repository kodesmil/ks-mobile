import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'dart:math' as math;
import 'package:more/iterable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jiffy/jiffy.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
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
  List<_Tile> days;
  final weekDays = ['   ', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  final df = DateFormat().add_yMMM();

  AutoScrollController controller;

  @override
  void initState() {
    final start = DateTime(2018);
    final end = DateTime.now().add(Duration(days: 730));
    final month_5 = [1, 14, 27, 40];
    final month_4 = [6, 10, 19, 23, 32, 36, 45, 49];
    days = List.generate(
      end.difference(start).inDays,
      (i) => _Tile(
        Type.DAY,
        DateTime(
          start.year,
          start.month,
          start.day + (i),
        ),
        1,
      ),
    ).expand((element) {
      final week = isoWeekNumber(element.time);
      if (element.time.weekday == 1 && month_4.contains(week)) {
        return [
          _Tile(Type.MONTH, element.time.add(Duration(days: 7)), 4),
          element
        ];
      } else if (element.time.weekday == 1 && month_5.contains(week)) {
        return [
          _Tile(Type.MONTH, element.time.add(Duration(days: 7)), 5),
          element
        ];
      } else if (element.time.weekday == 1 && week == 53) {
        return [
          _Tile(Type.EMPTY, element.time.add(Duration(days: 7)), 1),
          element
        ];
      } else {
        return [element];
      }
    }).toList();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.horizontal,
        suggestedRowHeight: 200);
    super.initState();
  }

  int dayOfYear(DateTime date) {
    return date.difference(DateTime(date.year, 1, 1)).inDays;
  }

  int isoWeekNumber(DateTime date) {
    var daysToAdd = DateTime.thursday - date.weekday;
    var thursdayDate = daysToAdd > 0
        ? date.add(Duration(days: daysToAdd))
        : date.subtract(Duration(days: daysToAdd.abs()));
    var dayOfYearThursday = dayOfYear(thursdayDate);
    return 1 + ((dayOfYearThursday - 1) / 7).floor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: PageScrollPhysics(),
            controller: controller,
            slivers: <Widget>[
              KsNavigationBar(title: 'Journal'),
              SliverSafeArea(
                sliver: _DayWidget(
                  controller: controller,
                ),
              )
            ],
          ),
          Calendar(weekDays: weekDays, days: days, df: df),
        ],
      ),
    );
  }
}

class _DayWidget extends StatefulWidget {
  final AutoScrollController controller;

  const _DayWidget({
    Key key,
    this.controller,
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
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: widget.controller,
            index: index,
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50, left: 25, right: 25,),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    // color: Theme.of(context).colorScheme.surface,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Theme.of(context).colorScheme.primary.withOpacity(0.1),
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
                          padding:EdgeInsets.only(top: 25),
                          child: OutlineButton(
                            child: Text('Scroll to April 11 2018'),
                            onPressed: () => widget.controller.scrollToIndex(100),
                          ),
                        ),
                      ],
                    ),
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

class Calendar extends StatelessWidget {
  const Calendar({
    Key key,
    @required this.weekDays,
    @required this.days,
    @required this.df,
  }) : super(key: key);

  final List<String> weekDays;
  final List<_Tile> days;
  final DateFormat df;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.075,
      maxChildSize: 0.5,
      minChildSize: 0.075,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
                spreadRadius: 0.25,
                blurRadius: 20,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: CustomScrollView(
            physics: PageScrollPhysics(),
            controller: scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  minHeight: 64,
                  maxHeight: 64,
                  child: Material(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          'Calendar',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  minHeight: 45,
                  maxHeight: 45,
                  child: Material(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: weekDays
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
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                sliver: SliverStaggeredGrid.count(
                  crossAxisCount: 8,
                  staggeredTiles: days
                      .indexed()
                      .map((e) => StaggeredTile.count(1, e.value.verticalSpan))
                      .toList(),
                  children: days.indexed().map(
                    (e) {
                      switch (e.value.type) {
                        case Type.MONTH:
                          return Material(
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  df.format(e.value.time),
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                          );
                        case Type.DAY:
                          return Material(
                            color: e.value.time.month % 2 == 0
                                ? Theme.of(context)
                                    .colorScheme
                                    .surface
                                    .withAlpha(128)
                                : Theme.of(context)
                                    .colorScheme
                                    .background
                                    .withAlpha(128),
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    e.value.time.day.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          );
                        case Type.EMPTY:
                          return SizedBox();
                      }
                      return SizedBox();
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
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

class KsTableCalendar extends TableCalendar {
  KsTableCalendar({
    CalendarController controller,
  }) : super(
          calendarController: controller,
        );
}
