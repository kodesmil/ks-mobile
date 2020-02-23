import 'package:legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/progress.dart';
import 'package:lib_lego/texts.dart';

class LegoProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Progress'),
            KsProgress.progress(0.2),
          ],
        ),
      );
}