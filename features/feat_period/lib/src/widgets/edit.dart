import 'package:feat_period/feat_period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key key,
  }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PeriodStore>(context);
    return ListView(
      children: [
        CalendarHeader(),
        Observer(
          builder: (context) => store.loadingStore.loading
              ? Container(
                  padding: EdgeInsets.all(100),
                  child: Center(
                    child: ColorLoader3(),
                  ),
                )
              : CalendarBody(),
        ),
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
  final InfiniteScrollController _infiniteController =
      InfiniteScrollController();

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: InfiniteListView.builder(
          addAutomaticKeepAlives: false,
          controller: _infiniteController,
          itemBuilder: (BuildContext context, int index) {
            return CalendarMonth(
              month: DateTime.utc(
                now.year + (now.month + index - 1) ~/ 12,
                (now.month + index - 1) % 12 + 1,
                1,
              ),
              nextMonth: DateTime.utc(
                now.year + (now.month + index) ~/ 12,
                (now.month + index) % 12 + 1,
                1,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CalendarMonth extends StatefulWidget {
  const CalendarMonth({
    Key key,
    this.month,
    this.nextMonth,
  }) : super(key: key);

  final DateTime month;
  final DateTime nextMonth;

  @override
  _CalendarMonthState createState() => _CalendarMonthState();
}

class _CalendarMonthState extends State<CalendarMonth> {
  List<DateTime> list;
  int weeks;
  int lastWeek;
  final DateTime now = DateTime.now();

  @override
  void initState() {
    final days = widget.nextMonth.difference(widget.month).inDays;
    weeks = ((days + widget.month.weekday) / 7.0).ceil();
    lastWeek = weeks * 7 - days - widget.month.weekday + 1;
    list = [
      ...Iterable<int>.generate(widget.month.weekday - 1).map(
        (e) => widget.month
            .toUtc()
            .subtract(Duration(days: widget.month.weekday - e - 1)),
      ),
      ...Iterable<int>.generate(days + lastWeek).map(
        (e) => widget.month.toUtc().add(Duration(days: e)),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PeriodStore>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              widget.month.month != 1 || widget.month.year != now.year
                  ? DateFormat.MMMM().format(widget.month)
                  : DateFormat.yMMMM().format(widget.month),
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Observer(
            builder: (context) {
              final entriesByDay = store.entriesByDay;
              return GridView.count(
                crossAxisCount: 7,
                shrinkWrap: true,
                primary: false,
                addAutomaticKeepAlives: true,
                children: list.map(
                  (e) {
                    final entry = entriesByDay[DateFormat.yMd().format(e)];
                    return e.month == widget.month.month
                        ? const SingleDay(
                            entry: entry,
                            day: e.toLocal(),
                          )
                        : Container();
                  },
                ).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SingleDay extends StatefulWidget {
  const SingleDay({
    Key key,
    this.day,
    this.entry,
  }) : super(key: key);

  final DateTime day;
  final PeriodDailyEntry entry;

  @override
  _SingleDayState createState() => _SingleDayState();
}

class _SingleDayState extends State<SingleDay> {
  PeriodDailyEntry_Severity severity = PeriodDailyEntry_Severity.NONE;

  @override
  void initState() {
    severity = widget?.entry?.severity ?? PeriodDailyEntry_Severity.NONE;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PeriodStore>(context);
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: () {
          if (widget.day.isToday()) {
            return Color(0xFFEAEAFF);
          }
          switch (widget.day.weekday) {
            case DateTime.saturday:
            case DateTime.sunday:
              return Color(0xFFFFEEEE);
            default:
              return Colors.white;
          }
        }(),
        border: Border.all(
          width: calculateWidth(),
          color: () {
            switch (severity) {
              case PeriodDailyEntry_Severity.LOW:
              case PeriodDailyEntry_Severity.HIGH:
              case PeriodDailyEntry_Severity.MID:
                return Color(0xFFDD3333);
              case PeriodDailyEntry_Severity.NONE:
                return Colors.black26;
            }
            return Colors.black26;
          }(),
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            switch (severity) {
              case PeriodDailyEntry_Severity.NONE:
                severity = PeriodDailyEntry_Severity.LOW;
                break;
              case PeriodDailyEntry_Severity.LOW:
                severity = PeriodDailyEntry_Severity.MID;
                break;
              case PeriodDailyEntry_Severity.MID:
                severity = PeriodDailyEntry_Severity.NONE;
                break;
            }
            store.createOrUpdatePeriodDailyEntry(
              widget.entry,
              severity: severity,
              day: widget.day,
            );
          });
        },
        onDoubleTap: () {
          setState(() {
            switch (severity) {
              case PeriodDailyEntry_Severity.NONE:
                severity = PeriodDailyEntry_Severity.MID;
                break;
              case PeriodDailyEntry_Severity.LOW:
                severity = PeriodDailyEntry_Severity.NONE;
                break;
              case PeriodDailyEntry_Severity.MID:
                severity = PeriodDailyEntry_Severity.LOW;
                break;
            }
            store.createOrUpdatePeriodDailyEntry(
              widget.entry,
              severity: severity,
              day: widget.day,
            );
          });
        },
        child: Center(
          child: Text(DateFormat.d().format(widget.day)),
        ),
      ),
    );
  }

  double calculateWidth() {
    switch (severity) {
      case PeriodDailyEntry_Severity.LOW:
        return 2.0;
      case PeriodDailyEntry_Severity.MID:
        return 4.0;
      case PeriodDailyEntry_Severity.NONE:
        return 1.0;
    }
    return 1.0;
  }
}
