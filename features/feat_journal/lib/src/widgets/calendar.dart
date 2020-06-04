import 'package:feat_journal/src/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key key,
    @required this.controllerDay,
    @required this.controllerCalendar,
  }) : super(key: key);

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
    todayCount = now.difference(initialDate).inDays;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      maxChildSize: 0.5,
      minChildSize: 0.1,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ListView(
            controller: scrollController,
            children: [
              CalendarHeader(),
              CalendarBody(
                controllerDay: widget.controllerDay,
                controllerCalendar: widget.controllerCalendar,
              ),
            ],
          ),
        );
      },
    );
  }
}

class CalendarBody extends StatelessWidget {
  const CalendarBody({
    Key key,
    @required this.controllerCalendar,
    @required this.controllerDay,
  }) : super(key: key);

  final PageAutoScrollController controllerDay;
  final AutoScrollController controllerCalendar;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: CustomScrollView(
          controller: controllerCalendar,
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return AutoScrollTag(
                    key: ValueKey(index),
                    controller: controllerCalendar,
                    index: index,
                    child: SingleCalendarItemWidget(
                      controllerCalendar: controllerCalendar,
                      controllerDay: controllerDay,
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
          CalendarHeaderWeeks(),
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

class SingleCalendarItemWidget extends StatelessWidget {
  const SingleCalendarItemWidget({
    Key key,
    @required this.controllerCalendar,
    @required this.controllerDay,
    @required this.index,
  }) : super(key: key);

  final int index;
  final PageAutoScrollController controllerDay;
  final AutoScrollController controllerCalendar;

  @override
  Widget build(BuildContext context) {
    final date = initialDate.add(Duration(
      days: index,
    ));
    return Container(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        splashColor: Colors.black12,
        onTap: () {
          controllerDay.jumpToPage(index);
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
