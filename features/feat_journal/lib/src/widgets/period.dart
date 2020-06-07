import 'package:dots_indicator/dots_indicator.dart';
import 'package:feat_journal/src/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:infinite_listview/infinite_listview.dart';

class EditJournalPage extends StatefulWidget {
  const EditJournalPage({
    Key key,
    @required this.todayCount,
    @required this.index,
  }) : super(key: key);

  final int todayCount;
  final int index;

  @override
  _EditJournalPageState createState() => _EditJournalPageState();
}

class _EditJournalPageState extends State<EditJournalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Calendar(),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({
    Key key,
  }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  void initState() {
    final now = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CalendarHeader(),
        CalendarBody(),
      ],
    );
  }
}

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          context.shadow2(),
        ],
        border: Border.all(
          color: Colors.black26,
          width: 0.5,
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.elliptical(40, 40),
        ),
      ),
      child: Column(
        children: [
          CalendarHeaderTitle(),
        ],
      ),
    );
  }
}

class CalendarHeaderTitle extends StatelessWidget {
  const CalendarHeaderTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      child: Text(
        'Calendar',
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CalendarHeaderWeeks extends StatelessWidget {
  final weekDays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 5,
        left: 5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    Key key,
  }) : super(key: key);

  @override
  _CalendarBodyState createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {
  final InfiniteScrollController _infiniteController = InfiniteScrollController(
    initialScrollOffset: 0.0,
  );

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: InfiniteListView.builder(
          key: PageStorageKey('Edit'),
          controller: _infiniteController,
          itemBuilder: (BuildContext context, int index) {
            print('---------');
            print(index);
            print(now.year + index ~/ 12);
            print((now.month + index) % 12 + 1);
            return CalendarMonth(
              month: DateTime(
                now.year + (now.month + index) ~/ 12,
                (now.month + index) % 12,
                1,
              ),
              nextMonth: DateTime(
                now.year + (index + 1) ~/ 12,
                (now.month + index + 1) % 12,
                1,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CalendarMonth extends StatelessWidget {
  const CalendarMonth({
    Key key,
    this.month,
    this.nextMonth,
  }) : super(key: key);

  final DateTime month;
  final DateTime nextMonth;

  @override
  Widget build(BuildContext context) {
    final days = nextMonth.difference(month).inDays;
    final weeks = days ~/ 7;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            month.month == 1
                ? DateFormat.yMMMM().format(month)
                : DateFormat.MMMM().format(month),
            style: Theme.of(context).textTheme.headline5,
          ),
          ...Iterable<int>.generate(
            weeks,
          ).map(
            (e) => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...(e == 0
                    ? Iterable<int>.generate(month.weekday - 1)
                        .map((e) => Expanded(child: Container()))
                    : []),
                ...Iterable<DateTime>.generate(
                  () {
                    if (e == 0) {
                      return 8 - month.weekday;
                    } else if (e == weeks - 1) {
                      return 7;
                    } else {
                      return 7;
                    }
                  }(),
                  (days) => month.add(
                    Duration(days: e * 7 + days),
                  ),
                )
                    .map(
                      (e) => Expanded(
                        child: Center(
                          child: Text(DateFormat.d().format(e)),
                        ),
                      ),
                    )
                    .toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SingleCalendarItemWidget extends StatelessWidget {
  const SingleCalendarItemWidget({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final date = initialDate.add(Duration(
      days: index,
    ));
    return Container(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        splashColor: Colors.black12,
        onTap: () {},
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
              bottom: Radius.elliptical(5, 5),
              top: Radius.elliptical(2, 2),
            ),
            boxShadow: [
              BoxShadow(
                color: date.isToday()
                    ? Theme.of(context).colorScheme.primary.withOpacity(0.3)
                    : Theme.of(context).colorScheme.primary.withOpacity(0.1),
                spreadRadius: 0.25,
                blurRadius: 2,
              ),
            ],
          ),
          child: SingleCalendarItemContent(date: date),
        ),
      ),
    );
  }
}

class SingleCalendarItemContent extends StatelessWidget {
  const SingleCalendarItemContent({
    Key key,
    @required this.date,
  }) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          date.day.toString(),
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          DateFormat().add_MMM().format(date).toUpperCase(),
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 7,
              ),
        ),
      ],
    );
  }
}
