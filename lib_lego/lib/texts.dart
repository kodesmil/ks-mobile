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
    this.type = KsTextType.body1,
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

  factory KsText.display1(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.display1,
        textAlign: textAlign,
      );

  factory KsText.display2(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.display2,
        textAlign: textAlign,
      );

  factory KsText.display3(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.display3,
        textAlign: textAlign,
      );

  factory KsText.display4(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.display4,
        textAlign: textAlign,
      );

  factory KsText.body1(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.body1,
        textAlign: textAlign,
      );

  factory KsText.body2(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.body2,
        textAlign: textAlign,
      );

  factory KsText.title(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.title,
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

  factory KsText.headline(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.headline,
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

  factory KsText.subhead(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.subhead,
        textAlign: textAlign,
      );

  factory KsText.subtitle(
    String text, {
    TextAlign textAlign,
  }) =>
      KsText(
        text,
        type: KsTextType.subtitle,
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
      case KsTextType.display1:
        return Theme.of(context).textTheme.display1;
      case KsTextType.display2:
        return Theme.of(context).textTheme.display2;
      case KsTextType.display3:
        return Theme.of(context).textTheme.display3;
      case KsTextType.display4:
        return Theme.of(context).textTheme.display4;
      case KsTextType.body2:
        return Theme.of(context).textTheme.body2;
      case KsTextType.title:
        return Theme.of(context).textTheme.title;
      case KsTextType.subtitle:
        return Theme.of(context).textTheme.subtitle;
      case KsTextType.caption:
        return Theme.of(context).textTheme.caption;
      case KsTextType.button:
        return Theme.of(context).textTheme.button;
      case KsTextType.subhead:
        return Theme.of(context).textTheme.subhead;
      case KsTextType.headline:
        return Theme.of(context).textTheme.headline;
      case KsTextType.overline:
        return Theme.of(context).textTheme.overline;
      case KsTextType.body1:
      default:
        return Theme.of(context).textTheme.body1;
    }
  }
}

enum KsTextType {
  display1,
  display2,
  display3,
  display4,
  body1,
  body2,
  title,
  subtitle,
  caption,
  button,
  subhead,
  headline,
  overline,
}
