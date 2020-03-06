import 'package:legobook/lego_page.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/colors.dart';
import 'package:lib_lego/texts.dart';

class LegoColorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Primary color'),

            KsColor.primary_light(),
            KsColor.accent_light(),
            KsColor.background_light(),
            KsColor.bottomAppBar_light(),
            KsColor.button_light(),
            KsColor.canvas_light(),
            KsColor.card_light(),
            KsColor.cursor_light(),
            KsColor.dialogBackground_light(),
            KsColor.disabled_light(),
            KsColor.divider_light(),
            KsColor.error_light(),
            KsColor.focus_light(),
            KsColor.highlight_light(),
            KsColor.hint_light(),
            KsColor.hover_light(),
            KsColor.indicator_light(),
            KsColor.scaffoldBackground_light(),
            KsColor.secondaryHeader_light(),
            KsColor.selectedRow_light(),
            KsColor.splash_light(),
            KsColor.textSelection_light(),
            KsColor.textSelectionHandle_light(),
            KsColor.toggleableActve_light(),
            KsColor.unselectedWidget_light(),

            KsColor.primary_dark(),
            KsColor.accent_dark(),
            KsColor.background_dark(),
            KsColor.bottomAppBar_dark(),
            KsColor.button_dark(),
            KsColor.canvas_dark(),
            KsColor.card_dark(),
            KsColor.cursor_dark(),
            KsColor.dialogBackground_dark(),
            KsColor.disabled_dark(),
            KsColor.divider_dark(),
            KsColor.error_dark(),
            KsColor.focus_dark(),
            KsColor.highlight_dark(),
            KsColor.hint_dark(),
            KsColor.hover_dark(),
            KsColor.indicator_dark(),
            KsColor.scaffoldBackground_dark(),
            KsColor.secondaryHeader_dark(),
            KsColor.selectedRow_dark(),
            KsColor.splash_dark(),
            KsColor.textSelection_dark(),
            KsColor.textSelectionHandle_dark(),
            KsColor.toggleableActve_dark(),
            KsColor.unselectedWidget_dark(),
          ],
        ),
      );
}
/*
class _LegoColorsInternal extends StatelessWidget {
  const _LegoColorsInternal({
    Key key,
    @required this.child,
  }) : super(key: key);

  final KsColor child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
*/