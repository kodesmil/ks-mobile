import 'package:flutter/material.dart';

class KsVerticalSpace extends StatelessWidget {
  final double height;

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

class KsHorizontalSpace extends StatelessWidget {
  final double width;

  const KsHorizontalSpace({
    Key key,
    this.width,
  }) : super(key: key);

  factory KsHorizontalSpace.m() => KsHorizontalSpace(width: 24);

  factory KsHorizontalSpace.l() => KsHorizontalSpace(width: 48);

  factory KsHorizontalSpace.xl() => KsHorizontalSpace(width: 72);

  factory KsHorizontalSpace.xxl() => KsHorizontalSpace(width: 96);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
