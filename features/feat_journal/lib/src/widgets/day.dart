import 'package:feat_journal/src/common.dart';
import 'package:feat_period/feat_period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';
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
    final store = Provider.of<PeriodStore>(context);
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
        child: Observer(
          builder: (context) => store.loadingStore.loading
              ? ColorLoader3()
              : Stack(
                  children: [
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Observer(
                            builder: (context) {
                              final entry = store
                                  .entriesByDay[DateFormat.yMd().format(date)];
                              return Column(
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
                                                icon:
                                                    Icon(Icons.calendar_today),
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
                                                SizedBox(height: 20),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: () {
                                                    if (entry == null) {
                                                      return [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.red,
                                                          size: 50,
                                                        ),
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.red,
                                                          size: 50,
                                                        )
                                                      ];
                                                    }
                                                    switch (entry.severity) {
                                                      case PeriodDailyEntry_Severity
                                                          .NONE:
                                                        return [
                                                          Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.red,
                                                            size: 50,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.red,
                                                            size: 50,
                                                          )
                                                        ];
                                                      case PeriodDailyEntry_Severity
                                                          .LOW:
                                                        return [
                                                          Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 50,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.red,
                                                            size: 50,
                                                          )
                                                        ];
                                                      case PeriodDailyEntry_Severity
                                                          .MID:
                                                        return [
                                                          Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 50,
                                                          ),
                                                          Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 50,
                                                          )
                                                        ];
                                                    }
                                                    return [];
                                                  }(),
                                                )
                                              ],
                                            ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 55),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: OutlineButton(
                                child: Text('Edit period'),
                                onPressed: () {
                                  newPageStart(context);
                                },
                              ),
                            ),
                            Image.asset(
                              'assets/images/peach/example/example-scene-${widget.index % 3 + 1}.png',
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
          Expanded(
            child: TabBarView(
              children: ['Symptoms', 'Period', 'Activity'].map((String text) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
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
          body: EditPeriodPage(),
        );
      },
    ),
  );
}
