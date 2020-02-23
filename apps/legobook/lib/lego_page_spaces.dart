import 'package:legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';

class LegoSpacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Vertical Space - XXL'),
            _LegoSpacesInternal(child: KsSpace.xxlH()),
            KsText.display1('Vertical Space - XL'),
            _LegoSpacesInternal(child: KsSpace.xlH()),
            KsText.display1('Vertical Space - L'),
            _LegoSpacesInternal(child: KsSpace.lH()),
            KsText.display1('Vertical Space - M'),
            _LegoSpacesInternal(child: KsSpace.mH()),
            KsText.display1('Vertical Space - S'),
            _LegoSpacesInternal(child: KsSpace.sH()),
            KsText.display1('Vertical Space - XS'),
            _LegoSpacesInternal(child: KsSpace.xsH()),
          ],
        ),
      );
}

class _LegoSpacesInternal extends StatelessWidget {
  const _LegoSpacesInternal({
    Key key,
    @required this.child,
  }) : super(key: key);

  final KsSpace child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 1000000,
      child: child,
    );
  }
}
