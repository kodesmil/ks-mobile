import 'package:legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/colors.dart';
import 'package:lib_lego/texts.dart';

class LegoColorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Primary color'),
            _LegoColorsInternal(child: KsColor.primary()),
          ],
        ),
      );
}

class _LegoColorsInternal extends StatelessWidget {
  const _LegoColorsInternal({
    Key key,
    @required this.child,
  }) : super(key: key);

  final KsColor child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
