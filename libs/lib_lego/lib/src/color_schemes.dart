import 'package:flutter/material.dart';

class KsColorScheme extends ColorScheme {
  KsColorScheme({
    @required primary,
    @required primaryVariant,
    @required secondary,
    @required secondaryVariant,
    @required surface,
    @required background,
    @required error,
    @required onPrimary,
    @required onSecondary,
    @required onSurface,
    @required onBackground,
    @required onError,
    @required brightness,
  }) : super(
          primary: primary,
          primaryVariant: primaryVariant,
          secondary: secondary,
          secondaryVariant: secondaryVariant,
          surface: surface,
          background: background,
          error: error,
          onPrimary: onPrimary,
          onSecondary: onSecondary,
          onSurface: onSurface,
          onBackground: onBackground,
          onError: onError,
          brightness: brightness,
        );

  factory KsColorScheme.motimLight() => KsColorScheme(
        primary: const Color(0xFF272343),
        primaryVariant: const Color(0xFF00BFA6),
        secondary: const Color(0xFFEFF3F3),
        secondaryVariant: const Color(0xFFFAFBFB),
        background: const Color(0xFFfefefe),
        surface: const Color(0xFF8edce6),
        onBackground: Colors.black,
        error: Colors.black,
        onError: Colors.black,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: const Color(0xFF272343),
        brightness: Brightness.light,
      );

  factory KsColorScheme.motimDark() => KsColorScheme(
        primary: Colors.white,
        primaryVariant: Colors.white,
        secondary: Colors.teal.shade700,
        secondaryVariant: Colors.teal,
        background: const Color(0xFF00212A),
        surface: Colors.black,
        onBackground: Colors.white,
        error: Colors.white,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        brightness: Brightness.dark,
      );

  factory KsColorScheme.kodesmilLight() => KsColorScheme(
        primary: Colors.black,
        primaryVariant: const Color(0xFF117378),
        secondary: const Color(0xFFEFF3F3),
        secondaryVariant: const Color(0xFFFAFBFB),
        background: Colors.white,
        surface: Colors.teal.shade100.withAlpha(156),
        onBackground: Colors.black,
        error: Colors.black,
        onError: Colors.black,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        brightness: Brightness.light,
      );

  factory KsColorScheme.kodesmilDark() => KsColorScheme(
        primary: const Color(0xFFC004D9),
        primaryVariant: Colors.white,
        secondary: Colors.teal.shade700,
        secondaryVariant: Colors.teal,
        background: Colors.white,
        surface: const Color(0xFFFAFAFA),
        onBackground: Colors.black,
        error: Colors.white,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.dark,
      );

  factory KsColorScheme.fotosmilLight() => KsColorScheme(
        primary: Colors.orange,
        primaryVariant: Colors.black,
        secondary: const Color(0xFFEFF3F3),
        secondaryVariant: const Color(0xFFFAFBFB),
        background: Colors.white,
        surface: Colors.orange.shade100.withAlpha(156),
        onBackground: Colors.black,
        error: Colors.black,
        onError: Colors.black,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        brightness: Brightness.light,
      );

  factory KsColorScheme.fotosmilDark() => KsColorScheme(
        primary: Colors.white,
        primaryVariant: Colors.white,
        secondary: Colors.orange.shade700,
        secondaryVariant: Colors.orange,
        background: const Color(0xFF00212A),
        surface: Colors.black,
        onBackground: Colors.white,
        error: Colors.white,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        brightness: Brightness.dark,
      );
}
