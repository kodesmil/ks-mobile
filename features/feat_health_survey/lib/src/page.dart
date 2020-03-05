import 'package:flutter/material.dart';
import 'package:lib_lego/buttons.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class HealthSurveyPage extends StatefulWidget {
  HealthSurveyPage();

  @override
  _HealthSurveyPageState createState() => _HealthSurveyPageState();
}

class _HealthSurveyPageState extends State<HealthSurveyPage> {
  _HealthSurveyPageState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HealthSurveyStore>(context);
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
