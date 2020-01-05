import 'package:flutter/material.dart';

class KsVerticalSpace extends StatelessWidget {
  final height;

  const KsVerticalSpace({
    Key key,
    this.height,
  }) : super(key: key);

  factory KsVerticalSpace.m() => KsVerticalSpace(height: 24);

  factory KsVerticalSpace.l() => KsVerticalSpace(height: 48);

  factory KsVerticalSpace.xl() => KsVerticalSpace(height: 72);

  factory KsVerticalSpace.xxl() => KsVerticalSpace(height: 96);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
