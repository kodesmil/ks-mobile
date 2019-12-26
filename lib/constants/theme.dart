// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MfThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static const _montserrat = 'Montserrat';
  static const _oswald = 'Oswald';

  static light() {
    final colorScheme = ColorScheme(
      primary: const Color(0xFFB93C5D),
      primaryVariant: const Color(0xFF117378),
      secondary: const Color(0xFFEFF3F3),
      secondaryVariant: const Color(0xFFFAFBFB),
      background: const Color(0xFFE6EBEB),
      surface: const Color(0xFFFAFBFB),
      onBackground: Colors.white,
      error: _lightFillColor,
      onError: _lightFillColor,
      onPrimary: _lightFillColor,
      onSecondary: const Color(0xFF322942),
      onSurface: const Color(0xFF241E30),
      brightness: Brightness.light,
    );
    final focusColor = Colors.black.withOpacity(0.12);
    return MfThemeData.generic(colorScheme, focusColor);
  }

  static dark() {
    final colorScheme = ColorScheme(
      primary: const Color(0xFFFF8383),
      primaryVariant: const Color(0xFF1CDEC9),
      secondary: const Color(0xFF4D1F7C),
      secondaryVariant: const Color(0xFF451B6F),
      background: const Color(0xFF241E30),
      surface: const Color(0xFF1F1929),
      onBackground: Colors.white.withOpacity(0.05),
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
      cursorColor: colorScheme.onSurface,
      backgroundColor: colorScheme.background,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      primaryColor: colorScheme.primaryVariant,
      focusColor: focusColor,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
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
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          body2: base.body2.copyWith(
            fontFamily: _montserrat,
            fontSize: 40,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.4,
          ),
          button: base.button.copyWith(
            fontFamily: 'Roboto Condensed',
            fontWeight: FontWeight.w700,
            letterSpacing: 2.8,
          ),
          headline: base.body2.copyWith(
            fontFamily: _montserrat,
            fontSize: 40,
            fontWeight: FontWeight.w600,
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
