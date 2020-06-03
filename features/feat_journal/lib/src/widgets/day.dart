import 'package:feat_journal/src/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';

class SingleJournalPage extends StatelessWidget {
  const SingleJournalPage({
    Key key,
    @required this.controllerDay,
    @required this.controllerCalendar,
    @required this.todayCount,
    @required this.index,
  }) : super(key: key);

  final PageAutoScrollController controllerDay;
  final AutoScrollController controllerCalendar;
  final int todayCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    final date = initialDate.add(Duration(
      days: index,
    ));
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          // color: Theme.of(context).colorScheme.surface,
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            context.shadow1(),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        DateFormat.d().format(date),
                        style: Theme.of(context).textTheme.headline1.copyWith(),
                      ),
                      Text(
                        DateFormat.yMMMMEEEEd().format(date),
                        style: Theme.of(context).textTheme.subtitle1.copyWith(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: OutlineButton(
                          child: Text('Travel in time'),
                          onPressed: () {
                            controllerDay.jumpToPage(100);
                            controllerCalendar.scrollToIndex(100);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: OutlineButton(
                          child: Text('Jump to now'),
                          onPressed: () {
                            controllerDay.jumpToPage(todayCount);
                            controllerCalendar.scrollToIndex(todayCount);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Positioned(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/peach/example/example-scene-${index % 3 + 1}.png', height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
