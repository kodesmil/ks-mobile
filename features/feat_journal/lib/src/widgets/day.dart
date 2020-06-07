import 'package:dots_indicator/dots_indicator.dart';
import 'package:feat_journal/src/common.dart';
import 'package:feat_journal/src/widgets/period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lib_lego/lib_lego.dart';

class SingleJournalPage extends StatefulWidget {
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
  _SingleJournalPageState createState() => _SingleJournalPageState();
}

class _SingleJournalPageState extends State<SingleJournalPage> {
  bool editable = false;

  @override
  Widget build(BuildContext context) {
    final date = initialDate.add(Duration(
      days: widget.index,
    ));
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Container(
        decoration: BoxDecoration(
          // color: Theme.of(context).colorScheme.surface,
          color: Colors.white,
          boxShadow: [
            context.shadow2(),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMMEEEEd().format(date),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(),
                          ),
                          editable
                              ? Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.calendar_today),
                                    onPressed: () => setState(
                                      () => editable = false,
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () => setState(
                                      () => editable = true,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 20),
                          child: editable
                              ? SingleDayEditor()
                              : Column(
                                  children: [
                                    Text(
                                      DateFormat.d().format(date),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          .copyWith(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 15,
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
                                        'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e'
                                        'nim ad minim veniam, quis nostrud exercitation ullamco labor'
                                        'is nisi ut aliquip ex ea commodo consequat. Duis aute irure',
                                        textAlign: TextAlign.justify,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 55),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/peach/example/example-scene-${widget.index % 3 + 1}.png',
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleDayEditor extends StatefulWidget {
  @override
  _SingleDayEditorState createState() => _SingleDayEditorState();
}

class _SingleDayEditorState extends State<SingleDayEditor> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            tabs: ['Symptoms', 'Period', 'Activity'].map((String text) {
              return Tab(
                text: text,
              );
            }).toList(),
          ),
          OutlineButton(
            child: Text('Dialog'),
            onPressed: () {
              newPageStart(context);
            },
          ),
          Expanded(
            child: TabBarView(
              children: ['Symptoms', 'Period', 'Activity'].map((String text) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
                    'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e'
                    'nim ad minim veniam, quis nostrud exercitation ullamco labor'
                    'is nisi ut aliquip ex ea commodo consequat. Duis aute irure',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Future newPageStart(BuildContext context) {
  return Navigator.of(context).push(
    CupertinoPageRoute<void>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: KsSmallNavigationBar(
            context: context,
            title: 'Edit',
          ),
          body: EditJournalPage(
            index: 0,
            todayCount: 0,
          ),
        );
      },
    ),
  );
}
