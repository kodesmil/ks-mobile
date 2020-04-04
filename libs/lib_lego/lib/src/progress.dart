import 'package:flutter/material.dart';

class KsProgress extends StatelessWidget {
  final double value;

  const KsProgress({
    Key key,
    this.value,
  }) : super(key: key);

  factory KsProgress.progress(
    double value,
  ) =>
      KsProgress(
        value: value,
      );

  @override
  Widget build(BuildContext context) => LinearProgressIndicator(value: value);
}
