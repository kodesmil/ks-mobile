import 'package:app_kodesmil_legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/texts.dart';

class LegoTextsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            KsText.display1('Display 1'),
            KsText.display2('Display 2'),
            KsText.display3('Display 3'),
            KsText.display4('Display 4'),
            KsText.body1('Body 1'),
            KsText.body2('Body 2'),
            KsText.title('Title'),
            KsText.subtitle('Subtitle'),
            KsText.headline('Headline'),
            KsText.subhead('Subhead'),
            KsText.button('Button'),
          ],
        ),
      );
}
