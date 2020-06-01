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
  final weekDays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  final df = DateFormat().add_yMMM();
  final start = DateTime(2018);

  AutoScrollController controller;

  int todayCount;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(start).inDays;
    controller = PageAutoScrollController(
      initialPage: todayCount,
    );
    super.initState();
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
              _DayWidget(
                controller: controller,
              ),
            ],
          ),
          Calendar(weekDays: weekDays, start: start, df: df, controller: controller,),
        ],
      ),
    );
  }
}

class _DayWidget extends StatefulWidget {
  final PageAutoScrollController controller;

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
    return SliverFillViewport(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: widget.controller,
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
                          onPressed: () => widget.controller.jumpToPage(100),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: OutlineButton(
                          child: Text('Jump to now'),
                          onPressed: () =>
                              widget.controller.jumpToPage(todayCount),
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

class Calendar extends StatelessWidget {
  const Calendar({
    Key key,
    @required this.weekDays,
    @required this.days,
    @required this.df,
    @required this.controller,
    this.start,
  }) : super(key: key);

  final List<String> weekDays;
  final List<_Tile> days;
  final DateFormat df;
  final DateTime start;
  final PageAutoScrollController controller;

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
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final date = start.add(Duration(
                        days: index,
                      ));
                      return Material(
                        color: date.month % 2 == 0
                            ? Theme.of(context)
                                .colorScheme
                                .surface
                                .withAlpha(128)
                            : Theme.of(context)
                                .colorScheme
                                .background
                                .withAlpha(128),
                        child: GestureDetector(
                          onTap: () => controller.jumpToPage(index),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  date.day.toString(),
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
