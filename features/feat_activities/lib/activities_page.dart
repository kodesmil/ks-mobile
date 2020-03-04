import 'package:flutter/material.dart';
import 'package:lib_lego/buttons.dart';
import 'package:provider/provider.dart';

import 'activities_store.dart';

class ActivitiesPage extends StatefulWidget {
  ActivitiesPage();

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  _ActivitiesPageState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ActivitiesStore>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            KsRaisedButton(
              text: 'Send as email',
              onPressed: () => store.sendData(),
            ),
          ],
        ),
      ),
    );
  }
}
