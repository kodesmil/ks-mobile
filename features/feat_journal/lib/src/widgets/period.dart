import 'package:dots_indicator/dots_indicator.dart';
import 'package:feat_journal/src/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';

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
  int todayCount;

  @override
  void initState() {
    final now = DateTime.now();
    todayCount = now.difference(initialDate).inDays;
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

class CalendarBody extends StatelessWidget {
  const CalendarBody({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return SingleCalendarItemWidget(
                    index: index,
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
        onTap: () {
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
