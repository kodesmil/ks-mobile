import 'package:flutter/material.dart';
//import 'package:lib_lego/dimensions.dart';
//import 'package:flutter/';

class KsColor extends StatelessWidget {
  final Color color;

  const KsColor(this.color);


  /// Default: 48 pt
  factory KsColor.primary() => KsColor(Colors.amber);

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 60,
    width: 60,
    child: const DecoratedBox(decoration: const BoxDecoration(color: this.color)),
  );
}
