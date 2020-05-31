import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'dart:math' as math;
import 'package:more/iterable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

enum Type { MONTH, DAY }

class _Tile {
  final Type type;
  final DateTime time;

  _Tile(this.type, this.time);
}

class _JournalPageState extends State<JournalPage> {
  final CalendarController _calendarController = CalendarController();

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final start = DateTime(2018);
    final end = DateTime.now().add(Duration(days: 730));
    final days = List.generate(
      end.difference(start).inDays,
      (i) => _Tile(
        Type.DAY,
        DateTime(
          start.year,
          start.month,
          start.day + (i),
        ),
      ),
    ).expand((element) {
      if (element.time.day == 1) {
        return [_Tile(Type.MONTH, element.time), element];
      } else {
        return [element];
      }
    }).toList();

    final weekDays = ['   ', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];

    final df = DateFormat().add_yMMM();

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          KsNavigationBar(title: 'Journal'),
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
                  .map(
                    (e) => e.index % 29 == 0
                        ? StaggeredTile.count(1, 4)
                        : StaggeredTile.count(1, 1),
                  )
                  .toList(),
              children: days
                  .indexed()
                  .map(
                    (e) => e.index % 29 == 0
                        ? Material(
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  df.format(e.value.time),
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                          )
                        : Material(
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
                              height: 100,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    e.value.time.day.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
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
    return new SizedBox.expand(child: child);
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
