import 'package:flutter/material.dart';
import 'package:legobook/lego_page.dart';
import 'package:lib_lego/lib_lego.dart';

class LegoProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.headline4('Progress'),
            KsProgress.progress(0.2),
          ],
        ),
      );
}
