import 'package:flutter/material.dart';

class KsContrainer {
  static double standardWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > 800 ? size.width * 0.5 : size.width * 0.95;
  }

  static double column12Width(BuildContext context, int columns) {
    final size = MediaQuery.of(context).size;
    return size.width > 800
        ? size.width * columns / 12
        : size.width * columns / 6;
  }
}
