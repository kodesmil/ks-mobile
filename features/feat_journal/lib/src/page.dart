import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

import 'package:table_calendar/table_calendar.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
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
      (i) => DateTime(
        start.year,
        start.month,
        start.day + (i),
      ),
    );

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          KsNavigationBar(title: 'Journal'),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid.count(
              crossAxisCount: 7,
              children: days
                  .map(
                    (e) => Material(
                      color: e.month % 2 == 0
                          ? Theme.of(context).colorScheme.surface.withAlpha(128)
                          : Theme.of(context).colorScheme.background.withAlpha(128),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              e.day.toString(),
                              style: Theme.of(context).textTheme.bodyText2,
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

class KsTableCalendar extends TableCalendar {
  KsTableCalendar({
    CalendarController controller,
  }) : super(
          calendarController: controller,
        );
}
