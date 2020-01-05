// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:lib_lego/color_schemes.dart';

class MfThemeData {
  static light() {
    final focusColor = Colors.black.withOpacity(0.12);
    return MfThemeData.generic(
      KsColorScheme.motimLight(),
      focusColor,
    );
  }

  static dark() {
    final focusColor = Colors.black.withOpacity(0.12);
    return MfThemeData.generic(
      KsColorScheme.motimDark(),
      focusColor,
    );
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
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.onPrimary,
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
          Colors.black.withOpacity(0.80),
          Colors.white,
        ),
        contentTextStyle: _textTheme.subhead.apply(
          color: Colors.white,
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
            fontFamily: 'Avenir',
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
            fontFamily: 'Avenir',
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
