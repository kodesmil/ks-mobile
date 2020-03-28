import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Flavor {
  DEVELOPMENT,
  QA,
  PRODUCTION,
}

class FlavorValues {
  FlavorValues({@required this.baseUrl});
  final String baseUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;
  static FlavorConfig _instance;

  FlavorConfig._internal(this.flavor, this.name, this.color, this.values);
  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isDevelopment() => _instance.flavor == Flavor.DEVELOPMENT;
  static bool isQA() => _instance.flavor == Flavor.QA;
}
