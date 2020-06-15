import 'package:feat_journal/src/common.dart';
import 'package:feat_period/feat_period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'widgets/calendar.dart';
import 'widgets/day.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<PeriodStore>(context);
    store.fetchPeriodEntries();
    final now = DateTime.now();
    final size = MediaQuery.of(context).size;
    final itemHeight = (size.width - 40) / 7;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KsAppBar(
        context: context,
        title: translate('g.journal'),
      ),
      body: _DayWidget(),
    );
  }
}

class _DayWidget extends StatefulWidget {
  const _DayWidget({
    Key key,
  }) : super(key: key);

  @override
  __DayWidgetState createState() => __DayWidgetState();
}

class __DayWidgetState extends State<_DayWidget> {
  @override
  Widget build(BuildContext context) {
    return InfiniteListView.builder(
      physics: PageScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleJournalPage(
                  index: index,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
