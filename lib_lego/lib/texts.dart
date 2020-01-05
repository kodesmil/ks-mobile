import 'package:flutter/material.dart';

class KsText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final KsTextType type;

  const KsText({
    Key key,
    this.text,
    this.style,
    this.type = KsTextType.body1,
  }) : super(key: key);

  factory KsText.display1(String text) => KsText(
        text: text,
        type: KsTextType.display1,
      );

  factory KsText.display2(String text) => KsText(
        text: text,
        type: KsTextType.display2,
      );

  factory KsText.display3(String text) => KsText(
        text: text,
        type: KsTextType.display3,
      );

  factory KsText.display4(String text) => KsText(
        text: text,
        type: KsTextType.display4,
      );

  factory KsText.body1(String text) => KsText(
        text: text,
        type: KsTextType.body1,
      );

  factory KsText.body2(String text) => KsText(
        text: text,
        type: KsTextType.body2,
      );

  factory KsText.title(String text) => KsText(
        text: text,
        type: KsTextType.title,
      );

  factory KsText.caption(String text) => KsText(
        text: text,
        type: KsTextType.caption,
      );

  factory KsText.headline(String text) => KsText(
        text: text,
        type: KsTextType.headline,
      );

  factory KsText.button(String text) => KsText(
        text: text,
        type: KsTextType.button,
      );

  factory KsText.subhead(String text) => KsText(
        text: text,
        type: KsTextType.subhead,
      );

  factory KsText.subtitle(String text) => KsText(
        text: text,
        type: KsTextType.subtitle,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? getStyle(context, type),
      textAlign: TextAlign.center,
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
      case KsTextType.body1:
        return Theme.of(context).textTheme.body1;
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
}
