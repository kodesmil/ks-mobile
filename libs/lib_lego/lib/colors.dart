import 'package:flutter/material.dart';
//import 'package:lib_lego/dimensions.dart';
//import 'package:flutter/';

class KsColor extends StatelessWidget {
  final Color color;

  const KsColor(this.color);


  /// Default: 48 pt
  factory KsColor.primary() => KsColor(Colors.red);

  @override
  Widget build(BuildContext context) => Container(
    width: 60,
    height: 60,
    color: this.color,
  );

}
