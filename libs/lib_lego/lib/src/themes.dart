import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_schemes.dart';

class AppStateNotifier extends ChangeNotifier {
  ThemeMode mode;

  void updateTheme(ThemeMode mode) {
    this.mode = mode;
    notifyListeners();
  }
}

class KsTheme {
  static ThemeData motimLight() => KsTheme.base(
        KsColorScheme.motimLight(),
        KsTextTheme.motim(KsColorScheme.motimLight()),
      );

  static ThemeData motimDark() => KsTheme.base(
        KsColorScheme.motimDark(),
        KsTextTheme.motim(KsColorScheme.motimDark()),
      );

  static ThemeData ablyLight() => KsTheme.base(
        KsColorScheme.motimLight(),
        KsTextTheme.motim(KsColorScheme.motimLight()),
      );

  static ThemeData ablyDark() => KsTheme.base(
        KsColorScheme.motimDark(),
        KsTextTheme.motim(KsColorScheme.motimDark()),
      );

  static ThemeData fotosmilLight() => KsTheme.base(
        KsColorScheme.motimLight(),
        KsTextTheme.fotosmil(KsColorScheme.motimLight()),
      );

  static ThemeData fotosmilDark() => KsTheme.base(
        KsColorScheme.motimDark(),
        KsTextTheme.fotosmil(KsColorScheme.motimDark()),
      );

  static ThemeData kodesmilLight() => KsTheme.base(
        KsColorScheme.kodesmilLight(),
        KsTextTheme.kodesmil(KsColorScheme.kodesmilLight()),
      );

  static ThemeData kodesmilDark() => KsTheme.base(
        KsColorScheme.kodesmilDark(),
        KsTextTheme.kodesmil(KsColorScheme.kodesmilDark()),
      );

  static ThemeData base(ColorScheme colorScheme, TextTheme textTheme) {
    final focusColor = Colors.black.withOpacity(0.12);
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      indicatorColor: colorScheme.onBackground,
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            color: colorScheme.onPrimary,
          ),
        ),
        color: colorScheme.surface,
        iconTheme: IconThemeData(
          color: colorScheme.onPrimary,
        ),
      ),
      dialogBackgroundColor: colorScheme.background,
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.onPrimary,
      ),
      dividerColor: colorScheme.onBackground.withAlpha(128),
      dividerTheme: DividerThemeData(
        thickness: 1,
      ),
      disabledColor: colorScheme.background.withAlpha(128),
      hintColor: colorScheme.onBackground,
      cursorColor: colorScheme.onSurface,
      backgroundColor: colorScheme.background,
      iconTheme: IconThemeData(color: colorScheme.onBackground),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      primaryColor: colorScheme.primary,
      focusColor: focusColor,
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white,
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: colorScheme.primary),
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        height: 40,
        textTheme: ButtonTextTheme.primary,
        colorScheme: colorScheme,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.primary,
        unselectedItemColor: colorScheme.background.withAlpha(128),
        selectedItemColor: colorScheme.background,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: colorScheme.onBackground,
        ),
        filled: true,
        fillColor: Colors.white60,
        border: InputBorder.none,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 0.75,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          Colors.black.withOpacity(0.80),
          Colors.white,
        ),
        contentTextStyle: textTheme.subtitle1.apply(
          color: Colors.white,
        ),
      ),
    );
  }
}

class KsTextTheme extends TextTheme {
  KsTextTheme({
    headline1,
    headline2,
    headline3,
    headline4,
    headline5,
    headline6,
    subtitle1,
    subtitle2,
    bodyText1,
    bodyText2,
    caption,
    button,
    overline,
  }) : super(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          subtitle1: subtitle1,
          bodyText2: bodyText2,
          bodyText1: bodyText1,
          caption: caption,
          button: button,
          subtitle2: subtitle2,
          overline: overline,
        );

  factory KsTextTheme.base(TextTheme theme) => KsTextTheme(
        headline1: theme.headline1,
        headline2: theme.headline2,
        headline3: theme.headline3,
        headline4: theme.headline4,
        headline5: theme.headline5,
        headline6: theme.headline6,
        subtitle1: theme.subtitle1,
        subtitle2: theme.subtitle2,
        bodyText1: theme.bodyText1,
        bodyText2: theme.bodyText2,
        caption: theme.caption,
        button: theme.button,
        overline: theme.overline,
      );

  factory KsTextTheme.motim(ColorScheme colorScheme) {
    final base = ThemeData.dark().textTheme;
    final fontFamily = 'SourceSansPro';
    final theme = base
        .copyWith(
          bodyText1: base.bodyText1.copyWith(
            fontFamily: fontFamily,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: base.bodyText2.copyWith(
            fontFamily: fontFamily,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.4,
          ),
          button: base.button.copyWith(
            fontFamily: fontFamily,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.8,
          ),
          headline5: base.headline5.copyWith(
            fontFamily: fontFamily,
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

  factory KsTextTheme.fotosmil(ColorScheme colorScheme) {
    final base = ThemeData.dark().textTheme;
    final fontFamily = 'Inter';
    final theme = base
        .copyWith(
          bodyText1: base.bodyText1.copyWith(
            fontFamily: fontFamily,
          ),
          bodyText2: base.bodyText2.copyWith(
            fontFamily: fontFamily,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.4,
          ),
          button: base.button.copyWith(
            fontFamily: fontFamily,
          ),
          overline: base.overline.copyWith(
            fontFamily: fontFamily,
          ),
          headline1: base.headline1.copyWith(
            fontFamily: fontFamily,
            fontSize: 96,
          ),
          headline2: base.headline2.copyWith(
            fontFamily: fontFamily,
          ),
          headline3: base.headline3.copyWith(
            fontFamily: fontFamily,
          ),
          headline4: base.headline4.copyWith(
            fontFamily: fontFamily,
          ),
          headline5: base.headline5.copyWith(
            fontFamily: fontFamily,
          ),
          headline6: base.headline6.copyWith(
            fontFamily: fontFamily,
          ),
          subtitle1: base.subtitle1.copyWith(
            fontFamily: fontFamily,
          ),
          subtitle2: base.subtitle2.copyWith(
            fontFamily: fontFamily,
          ),
          caption: base.caption.copyWith(
            fontFamily: fontFamily,
          ),
        )
        .apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
          decorationColor: colorScheme.onSurface,
        );
    return KsTextTheme.base(theme);
  }

  factory KsTextTheme.kodesmil(ColorScheme colorScheme) {
    final base = ThemeData.dark().textTheme;
    final fontFamily = 'Noto';
    final theme = base
        .copyWith(
          bodyText1: base.bodyText1.copyWith(
            fontFamily: fontFamily,
          ),
          bodyText2: base.bodyText2.copyWith(
            fontFamily: fontFamily,
            fontSize: 17,
            letterSpacing: 1.4,
          ),
          button: base.button.copyWith(
            fontFamily: fontFamily,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          overline: base.overline.copyWith(
            fontFamily: fontFamily,
          ),
          headline1: base.headline1.copyWith(
            fontFamily: fontFamily,
            fontSize: 96,
          ),
          headline2: base.headline2.copyWith(
            fontFamily: fontFamily,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          headline3: base.headline3.copyWith(
            fontFamily: fontFamily,
          ),
          headline4: base.headline4.copyWith(
            fontFamily: fontFamily,
          ),
          headline5: base.headline5.copyWith(
            fontFamily: fontFamily,
          ),
          caption: base.caption.copyWith(
            fontFamily: fontFamily,
          ),
          headline6: base.headline6.copyWith(
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: base.subtitle1.copyWith(
            fontFamily: fontFamily,
          ),
          subtitle2: base.subtitle2.copyWith(
            fontFamily: fontFamily,
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
