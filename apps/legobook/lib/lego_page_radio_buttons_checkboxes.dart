import 'package:flutter/material.dart';
import 'package:legobook/lego_page.dart';
import 'package:lib_lego/lib_lego.dart';

class LegoRadioButtonsCheckboxesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            KsCheckbox(
              label: 'Sample Text',
            ),
            KsRadio(labels: ['Sample Text 1', 'Sample Text 2']),
          ],
        ),
      );
}
