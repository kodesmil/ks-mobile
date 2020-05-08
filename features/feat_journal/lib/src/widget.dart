import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class JournalWidget extends StatefulWidget {
  JournalWidget();

  @override
  _JournalWidgetState createState() => _JournalWidgetState();
}

class _JournalWidgetState extends State<JournalWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<JournalStore>(context);
    store.fetchJournalSubjectActivities(JournalSubject_Type.ACTIVITY);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<JournalStore>(context);
    return Column(
      children: <Widget>[
        KsSpace.l(),
        Observer(
          builder: (context) => Column(
            children: store.journalActivities.map((e) => Text(e.name)).toList(),
          ),
        ),
        KsSpace.l(),
        RaisedButton(
          child: Text('Create journal entry'),
          onPressed: () => store.createJournal(),
        ),
      ],
    );
  }
}
