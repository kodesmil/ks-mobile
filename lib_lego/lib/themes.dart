import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/color_schemes.dart';

class KsTheme {
  static motimLight() => KsTheme.base(
        KsColorScheme.motimLight(),
        KsTextTheme.motim(KsColorScheme.motimLight()),
      );

  static motimDark() => KsTheme.base(
        KsColorScheme.motimDark(),
        KsTextTheme.motim(KsColorScheme.motimDark()),
      );

  static base(ColorScheme colorScheme, TextTheme textTheme) {
    final focusColor = Colors.black.withOpacity(0.12);
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
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
        contentTextStyle: textTheme.subhead.apply(
          color: Colors.white,
        ),
      ),
    );
  }
}

class KsTextTheme extends TextTheme {
  KsTextTheme({
    display4,
    display3,
    display2,
    display1,
    headline,
    title,
    subhead,
    body2,
    body1,
    caption,
    button,
    subtitle,
    overline,
  }) : super(
          display4: display4,
          display3: display3,
          display2: display2,
          display1: display1,
          headline: headline,
          title: title,
          subhead: subhead,
          body2: body2,
          body1: body1,
          caption: caption,
          button: button,
          subtitle: subtitle,
          overline: overline,
        );

  factory KsTextTheme.base(TextTheme theme) => KsTextTheme(
        display4: theme.display4,
        display3: theme.display3,
        display2: theme.display2,
        display1: theme.display1,
        headline: theme.headline,
        title: theme.title,
        subhead: theme.subhead,
        body2: theme.body2,
        body1: theme.body1,
        caption: theme.caption,
        button: theme.button,
        subtitle: theme.subtitle,
        overline: theme.overline,
      );

  factory KsTextTheme.motim(ColorScheme colorScheme) {
    final base = ThemeData.dark().textTheme;
    final theme = base
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
    return KsTextTheme.base(theme);
  }
}
