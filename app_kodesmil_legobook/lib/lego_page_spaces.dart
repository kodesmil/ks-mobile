import 'package:app_kodesmil_legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';

class LegoSpacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Vertical Space - XXL'),
            _LegoSpacesInternal(child: KsVerticalSpace.xxl()),
            KsText.display1('Vertical Space - XL'),
            _LegoSpacesInternal(child: KsVerticalSpace.xl()),
            KsText.display1('Vertical Space - L'),
            _LegoSpacesInternal(child: KsVerticalSpace.l()),
            KsText.display1('Vertical Space - M'),
            _LegoSpacesInternal(child: KsVerticalSpace.m()),
            KsText.display1('Vertical Space - S'),
            _LegoSpacesInternal(child: KsVerticalSpace.s()),
            KsText.display1('Vertical Space - XS'),
            _LegoSpacesInternal(child: KsVerticalSpace.xs()),
          ],
        ),
      );
}

class _LegoSpacesInternal extends StatelessWidget {
  const _LegoSpacesInternal({
    Key key,
    @required this.child,
  }) : super(key: key);

  final KsVerticalSpace child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 1000000,
      child: child,
    );
  }
}
