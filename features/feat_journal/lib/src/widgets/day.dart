import 'package:feat_health/feat_health.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:lib_lego/lib_lego.dart';

class SingleJournalPage extends StatefulWidget {
  const SingleJournalPage({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  _SingleJournalPageState createState() => _SingleJournalPageState();
}

class _SingleJournalPageState extends State<SingleJournalPage> {
  bool editable = false;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MenstruationDailyEntryStore>(context);
    final date =
        DateTime.now().toUtc().add(Duration(days: widget.index)).toLocal();
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.surface,
        color: Colors.white,
        boxShadow: [
          context.shadow2(),
        ],
      ),
      child: Observer(
        builder: (context) => store.loadingStore.loading
            ? KsProgressIndicator()
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
                                              icon: Icon(Icons.calendar_today),
                                              onPressed: () => setState(
                                                () => editable = false,
                                              ),
                                            ),
                                          )
                                        : Expanded(
                                            child: IconButton(
                                              icon: Icon(Icons.info),
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
                                                      Container(),
                                                    ];
                                                  }
                                                  switch (entry.intensityPercentage) {
                                                    case 0:
                                                      return [
                                                        Container(),
                                                      ];
                                                    case 50:
                                                      return [
                                                        _Dot(),
                                                      ];
                                                    case 100:
                                                      return [
                                                        _Dot(),
                                                        _Dot(),
                                                      ];
                                                  }
                                                  return [
                                                    Container(),
                                                  ];
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
                        ],
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
        return CupertinoPageScaffold(
          navigationBar: KsSmallNavigationBar(title: 'Edit'
          ),
          child: EditPeriodPage(),
        );
      },
    ),
  );
}

class _Dot extends StatelessWidget {
  const _Dot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pinkAccent,
      ),
    );
  }
}
