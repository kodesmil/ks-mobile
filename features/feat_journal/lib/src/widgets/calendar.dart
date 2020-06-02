import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';

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
      initialChildSize: 0.1,
      maxChildSize: 0.4,
      minChildSize: 0.1,
      builder: (BuildContext context, ScrollController scrollController) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            controller: scrollController,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      spreadRadius: 0.25,
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(40, 40),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
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
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        right: 5,
                        left: 5,
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
                  ],
                ),
              ),
              Material(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
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
                                        bottom: Radius.elliptical(5, 5),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
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
          ),
        );
      },
    );
  }
}
