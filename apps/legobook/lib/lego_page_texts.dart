import 'package:flutter/material.dart';
import 'package:legobook/lego_page.dart';
import 'package:lib_lego/lib_lego.dart';

class LegoTextsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            KsText.headline4('Headline 4'),
            KsText.headline3('Headline 3'),
            KsText.headline2('Headline 2'),
            KsText.headline1('Headline 1'),
            KsText.bodyText2('Body 1'),
            KsText.bodyText1('Body Text 1'),
            KsText.headline6('Title'),
            KsText.subtitle2('Subtitle'),
            KsText.headline5('Headline'),
            KsText.subtitle1('Subtitle 1'),
            KsText.button('Button'),
          ],
        ),
      );
}
