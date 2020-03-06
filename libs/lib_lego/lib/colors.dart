import 'package:flutter/material.dart';
//import 'package:lib_lego/dimensions.dart';
//import 'package:flutter/';

class KsColor extends StatelessWidget {
  final Color color;

  const KsColor(this.color);


  /// Default: 48 pt
  factory KsColor.primary_dark() => KsColor(ThemeData.dark().primaryColor);
  factory KsColor.accent_dark() => KsColor(ThemeData.dark().accentColor);
  factory KsColor.background_dark() => KsColor(ThemeData.dark().backgroundColor);
  factory KsColor.bottomAppBar_dark() => KsColor(ThemeData.dark().bottomAppBarColor);
  factory KsColor.button_dark() => KsColor(ThemeData.dark().buttonColor);
  factory KsColor.canvas_dark() => KsColor(ThemeData.dark().canvasColor);
  factory KsColor.card_dark() => KsColor(ThemeData.dark().cardColor);
  factory KsColor.cursor_dark() => KsColor(ThemeData.dark().cursorColor);
  factory KsColor.dialogBackground_dark() => KsColor(ThemeData.dark().dialogBackgroundColor);
  factory KsColor.disabled_dark() => KsColor(ThemeData.dark().disabledColor);
  factory KsColor.divider_dark() => KsColor(ThemeData.dark().dividerColor);
  factory KsColor.error_dark() => KsColor(ThemeData.dark().errorColor);
  factory KsColor.focus_dark() => KsColor(ThemeData.dark().focusColor);
  factory KsColor.highlight_dark() => KsColor(ThemeData.dark().highlightColor);
  factory KsColor.hint_dark() => KsColor(ThemeData.dark().hintColor);
  factory KsColor.hover_dark() => KsColor(ThemeData.dark().hoverColor);
  factory KsColor.indicator_dark() => KsColor(ThemeData.dark().indicatorColor);
  factory KsColor.scaffoldBackground_dark() => KsColor(ThemeData.dark().scaffoldBackgroundColor);
  factory KsColor.secondaryHeader_dark() => KsColor(ThemeData.dark().secondaryHeaderColor);
  factory KsColor.selectedRow_dark() => KsColor(ThemeData.dark().selectedRowColor);
  factory KsColor.splash_dark() => KsColor(ThemeData.dark().splashColor);
  factory KsColor.textSelection_dark() => KsColor(ThemeData.dark().textSelectionColor);
  factory KsColor.textSelectionHandle_dark() => KsColor(ThemeData.dark().textSelectionHandleColor);
  factory KsColor.toggleableActve_dark() => KsColor(ThemeData.dark().toggleableActiveColor);
  factory KsColor.unselectedWidget_dark() => KsColor(ThemeData.dark().unselectedWidgetColor);

  factory KsColor.primary_light() => KsColor(ThemeData.light().primaryColor);
  factory KsColor.accent_light() => KsColor(ThemeData.light().accentColor);
  factory KsColor.background_light() => KsColor(ThemeData.light().backgroundColor);
  factory KsColor.bottomAppBar_light() => KsColor(ThemeData.light().bottomAppBarColor);
  factory KsColor.button_light() => KsColor(ThemeData.light().buttonColor);
  factory KsColor.canvas_light() => KsColor(ThemeData.light().canvasColor);
  factory KsColor.card_light() => KsColor(ThemeData.light().cardColor);
  factory KsColor.cursor_light() => KsColor(ThemeData.light().cursorColor);
  factory KsColor.dialogBackground_light() => KsColor(ThemeData.light().dialogBackgroundColor);
  factory KsColor.disabled_light() => KsColor(ThemeData.light().disabledColor);
  factory KsColor.divider_light() => KsColor(ThemeData.light().dividerColor);
  factory KsColor.error_light() => KsColor(ThemeData.light().errorColor);
  factory KsColor.focus_light() => KsColor(ThemeData.light().focusColor);
  factory KsColor.highlight_light() => KsColor(ThemeData.light().highlightColor);
  factory KsColor.hint_light() => KsColor(ThemeData.light().hintColor);
  factory KsColor.hover_light() => KsColor(ThemeData.light().hoverColor);
  factory KsColor.indicator_light() => KsColor(ThemeData.light().indicatorColor);
  factory KsColor.scaffoldBackground_light() => KsColor(ThemeData.light().scaffoldBackgroundColor);
  factory KsColor.secondaryHeader_light() => KsColor(ThemeData.light().secondaryHeaderColor);
  factory KsColor.selectedRow_light() => KsColor(ThemeData.light().selectedRowColor);
  factory KsColor.splash_light() => KsColor(ThemeData.light().splashColor);
  factory KsColor.textSelection_light() => KsColor(ThemeData.light().textSelectionColor);
  factory KsColor.textSelectionHandle_light() => KsColor(ThemeData.light().textSelectionHandleColor);
  factory KsColor.toggleableActve_light() => KsColor(ThemeData.light().toggleableActiveColor);
  factory KsColor.unselectedWidget_light() => KsColor(ThemeData.light().unselectedWidgetColor);

  @override
  Widget build(BuildContext context) => Container(
    width: 60,
    height: 60,
    color: this.color,
  );

}
