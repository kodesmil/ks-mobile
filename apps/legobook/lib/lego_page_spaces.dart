import 'package:flutter/material.dart';
import 'package:legobook/lego_page.dart';
import 'package:lib_lego/lib_lego.dart';

class LegoSpacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.headline4('Vertical Space - XXL'),
            _LegoSpacesInternal(child: KsSpace.xxlH()),
            KsText.headline4('Vertical Space - XL'),
            _LegoSpacesInternal(child: KsSpace.xlH()),
            KsText.headline4('Vertical Space - L'),
            _LegoSpacesInternal(child: KsSpace.lH()),
            KsText.headline4('Vertical Space - M'),
            _LegoSpacesInternal(child: KsSpace.mH()),
            KsText.headline4('Vertical Space - S'),
            _LegoSpacesInternal(child: KsSpace.sH()),
            KsText.headline4('Vertical Space - XS'),
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
