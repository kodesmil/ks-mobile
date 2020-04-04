import 'package:flutter/material.dart';

class KsText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final KsTextType type;
  final strutStyle;
  final textAlign;
  final textDirection;
  final locale;
  final softWrap;
  final overflow;
  final textScaleFactor;
  final maxLines;
  final semanticsLabel;
  final textWidthBasis;

  const KsText(
    this.text, {
    Key key,
    this.style,
    this.type = KsTextType.bodyText2,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
  }) : super(key: key);

  factory KsText.headline4(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline4,
        textAlign: textAlign,
      );

  factory KsText.headline3(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline3,
        textAlign: textAlign,
      );

  factory KsText.headline2(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline2,
        textAlign: textAlign,
      );

  factory KsText.headline1(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline1,
        textAlign: textAlign,
      );

  factory KsText.bodyText2(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.bodyText2,
        textAlign: textAlign,
      );

  factory KsText.bodyText1(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.bodyText1,
        textAlign: textAlign,
      );

  factory KsText.headline6(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline6,
        textAlign: textAlign,
      );

  factory KsText.caption(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.caption,
        textAlign: textAlign,
      );

  factory KsText.headline5(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline5,
        textAlign: textAlign,
      );

  factory KsText.button(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.button,
        textAlign: textAlign,
      );

  factory KsText.subtitle1(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.subtitle1,
        textAlign: textAlign,
      );

  factory KsText.subtitle2(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.subtitle2,
        textAlign: textAlign,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? getStyle(context, type),
      textAlign: textAlign,
      textScaleFactor: textScaleFactor,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
      strutStyle: strutStyle,
      softWrap: softWrap,
      semanticsLabel: semanticsLabel,
      locale: locale,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  TextStyle getStyle(BuildContext context, KsTextType type) {
    switch (type) {
      case KsTextType.headline1:
        return Theme.of(context).textTheme.headline1;
      case KsTextType.headline2:
        return Theme.of(context).textTheme.headline2;
      case KsTextType.headline3:
        return Theme.of(context).textTheme.headline3;
      case KsTextType.headline4:
        return Theme.of(context).textTheme.headline4;
      case KsTextType.headline5:
        return Theme.of(context).textTheme.headline5;
      case KsTextType.headline6:
        return Theme.of(context).textTheme.headline6;
      case KsTextType.subtitle1:
        return Theme.of(context).textTheme.subtitle1;
      case KsTextType.subtitle2:
        return Theme.of(context).textTheme.subtitle2;
      case KsTextType.caption:
        return Theme.of(context).textTheme.caption;
      case KsTextType.button:
        return Theme.of(context).textTheme.button;
      case KsTextType.overline:
        return Theme.of(context).textTheme.overline;
      case KsTextType.bodyText1:
        return Theme.of(context).textTheme.bodyText1;
      case KsTextType.bodyText2:
      default:
        return Theme.of(context).textTheme.bodyText2;
    }
  }
}

enum KsTextType {
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  bodyText1,
  bodyText2,
  caption,
  button,
  subtitle1,
  subtitle2,
  overline,
}
