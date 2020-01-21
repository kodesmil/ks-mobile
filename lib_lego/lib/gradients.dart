import 'package:flutter/material.dart';

class KsGradientColors {
  List<Color> colors;

  KsGradientColors(this.colors);

  factory KsGradientColors.kodesmil() => KsGradientColors([
        Color(0xFF0066FF),
        Color(0xFF3316F2),
        Color(0xFF6D0FF2),
      ]);

  factory KsGradientColors.kodesmilDown() => KsGradientColors([
        Color(0xFFAB05F2),
        Color(0xFF6D0FF2),
      ]);
}

class KsGradientStops {
  List<double> stops;

  KsGradientStops(this.stops);

  factory KsGradientStops.kodesmil() => KsGradientStops(
        [
          0.3104,
          0.6264,
          1,
        ],
      );

  factory KsGradientStops.kodesmilDown() => KsGradientStops(
        [
          0.3235,
          1,
        ],
      );
}

class KsGradient {
  Gradient gradient;

  KsGradient(this.gradient);

  factory KsGradient.kodesmil() => KsGradient(
        RadialGradient(
          center: Alignment.bottomCenter,
          radius: 1.2,
          stops: KsGradientStops.kodesmil().stops,
          colors: KsGradientColors.kodesmil().colors,
        ),
      );

  factory KsGradient.kodesmilDown() => KsGradient(
        LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: KsGradientStops.kodesmilDown().stops,
          colors: KsGradientColors.kodesmilDown().colors,
        ),
      );
}
