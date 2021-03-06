import 'package:flutter/material.dart';

import 'dimensions.dart';

class KsSpace extends StatelessWidget {
  final double height;
  final double width;

  const KsSpace({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  /// Default: 4 pt
  factory KsSpace.xxsH() => KsSpace(height: KsDimension.xxs);

  /// Default: 8 pt
  factory KsSpace.xsH() => KsSpace(height: KsDimension.xs);

  /// Default: 16 pt
  factory KsSpace.sH() => KsSpace(height: KsDimension.s);

  /// Default: 24 pt
  factory KsSpace.mH() => KsSpace(height: KsDimension.m);

  /// Default: 32 pt
  factory KsSpace.lH() => KsSpace(height: KsDimension.l);

  /// Default: 48 pt
  factory KsSpace.xlH() => KsSpace(height: KsDimension.xl);

  /// Default: 72 pt
  factory KsSpace.xxlH() => KsSpace(height: KsDimension.xxl);

  /// Default: 96 pt
  factory KsSpace.xxsW() => KsSpace(width: KsDimension.xxs);

  /// Default: 4 pt
  factory KsSpace.xsW() => KsSpace(width: KsDimension.xs);

  /// Default: 16 pt
  factory KsSpace.sW() => KsSpace(width: KsDimension.s);

  /// Default: 24 pt
  factory KsSpace.mW() => KsSpace(width: KsDimension.m);

  /// Default: 32 pt
  factory KsSpace.lW() => KsSpace(width: KsDimension.l);

  /// Default: 48 pt
  factory KsSpace.xlW() => KsSpace(width: KsDimension.xl);

  /// Default: 72 pt
  factory KsSpace.xxlW() => KsSpace(width: KsDimension.xxl);

  /// Default: 4 pt
  factory KsSpace.xxs() => KsSpace(
        width: KsDimension.xxs,
        height: KsDimension.xxs,
      );

  /// Default: 8 pt
  factory KsSpace.xs() => KsSpace(
        width: KsDimension.xs,
        height: KsDimension.xs,
      );

  /// Default: 16 pt
  factory KsSpace.s() => KsSpace(
        width: KsDimension.s,
        height: KsDimension.s,
      );

  /// Default: 32 pt
  factory KsSpace.m() => KsSpace(
        width: KsDimension.m,
        height: KsDimension.m,
      );

  /// Default: 48 pt
  factory KsSpace.l() => KsSpace(
        width: KsDimension.l,
        height: KsDimension.l,
      );

  /// Default: 72 pt
  factory KsSpace.xl() => KsSpace(
        width: KsDimension.xl,
        height: KsDimension.xl,
      );

  /// Default: 96 pt
  factory KsSpace.xxl() => KsSpace(
        width: KsDimension.xxl,
        height: KsDimension.xxl,
      );

  @override
  Widget build(BuildContext context) => SizedBox(height: height, width: width);
}
