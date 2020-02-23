import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:kodesmil_locale/localizations.dart';

class SmilesWidget extends StatefulWidget {
  @override
  _SmilesWidgetState createState() => _SmilesWidgetState();
}

class _SmilesWidgetState extends State<SmilesWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween<double>(begin: 22100, end: 22342).animate(controller);
    controller.forward();
  }

  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Container(
            color: Colors.orange.withAlpha(128),
            height: KsDimension.s,
          ),
          Container(
            color: Colors.orange,
            child: SmileWidget(animation: animation),
          ),
          Container(
            color: Colors.orange.withAlpha(128),
            height: KsDimension.s,
          ),
          KsSpace.lH(),
          KsText.display4('🥳'),
        ],
      );
}

class SmileWidget extends AnimatedWidget {
  SmileWidget({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Column(
      children: <Widget>[
        Container(width: MediaQuery.of(context).size.width),
        KsSpace.mH(),
        KsText.display3(animation.value.floor().toString()),
        KsText.display1(KsLoc.of(context).fsSmilesDelivered()),
        KsSpace.mH(),
      ],
    );
  }
}
