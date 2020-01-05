// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MfThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static const _montserrat = 'Avenir';

  static light() {
    final colorScheme = ColorScheme(
      primary: Colors.black,
      primaryVariant: const Color(0xFF117378),
      secondary: const Color(0xFFEFF3F3),
      secondaryVariant: const Color(0xFFFAFBFB),
      background: Colors.white,
      surface: Colors.teal.shade100.withAlpha(156),
      onBackground: Colors.black,
      error: _lightFillColor,
      onError: _lightFillColor,
      onPrimary: _lightFillColor,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      brightness: Brightness.light,
    );
    final focusColor = Colors.black.withOpacity(0.12);
    return MfThemeData.generic(colorScheme, focusColor);
  }

  static dark() {
    final colorScheme = ColorScheme(
      primary: Colors.white.withAlpha(200),
      primaryVariant: Colors.white.withAlpha(32),
      secondary: Colors.teal.shade700,
      secondaryVariant: Colors.teal,
      background: const Color(0xFF00212A),
      surface: Colors.black,
      onBackground: Colors.white,
      error: _darkFillColor,
      onError: _darkFillColor,
      onPrimary: _darkFillColor,
      onSecondary: _darkFillColor,
      onSurface: _darkFillColor,
      brightness: Brightness.dark,
    );
    final focusColor = Colors.black.withOpacity(0.12);
    return MfThemeData.generic(colorScheme, focusColor);
  }

  static generic(ColorScheme colorScheme, Color focusColor) {
    final base = ThemeData.dark();
    TextTheme _textTheme = buildTextTheme(base.textTheme, colorScheme);
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
        decorationColor: colorScheme.onSurface,
      ),
      appBarTheme: AppBarTheme(
        color: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
        brightness: colorScheme.brightness,
      ),
      dividerColor: colorScheme.onBackground.withAlpha(128),
      dividerTheme: DividerThemeData(
        thickness: 1,
      ),
      hintColor: colorScheme.onBackground,
      cursorColor: colorScheme.onSurface,
      backgroundColor: colorScheme.background,
      iconTheme: IconThemeData(color: colorScheme.onBackground),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      primaryColor: colorScheme.primaryVariant,
      focusColor: focusColor,
      buttonTheme: ButtonThemeData(
        height: 40,
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: colorScheme.onBackground,
        ),
        filled: true,
        fillColor: colorScheme.surface,
        focusedBorder: InputBorder.none,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subhead.apply(
          color: _darkFillColor,
        ),
      ),
    );
  }

  static TextTheme buildTextTheme(TextTheme base, ColorScheme colorScheme) {
    return base
        .copyWith(
          body1: base.body1.copyWith(
            fontFamily: 'Roboto Condensed',
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          body2: base.body2.copyWith(
            fontFamily: _montserrat,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.4,
          ),
          button: base.button.copyWith(
            fontFamily: 'Roboto Condensed',
            fontWeight: FontWeight.w700,
            letterSpacing: 2.8,
          ),
          headline: base.headline.copyWith(
            fontFamily: _montserrat,
            fontSize: 40,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.4,
          ),
        )
        .apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
          decorationColor: colorScheme.onSurface,
        );
  }
}
