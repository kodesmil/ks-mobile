import 'package:app_kodesmil_legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/checkboxes.dart';
import 'package:lib_lego/radio_buttons.dart';

class LegoRadioButtonsCheckboxesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        KsCheckbox(label: 'sample text',),
        KsRadio(label: 'sample text',),
      ],
    ),
  );
}
