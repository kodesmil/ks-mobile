import 'package:flutter/material.dart';

class KsText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const KsText({
    Key key,
    this.text,
    this.style,
  }) : super(key: key);

  factory KsText.display1(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.display1,
      );

  factory KsText.display2(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.display2,
      );

  factory KsText.display3(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.display3,
      );

  factory KsText.display4(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.display4,
      );

  factory KsText.body1(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.body1,
      );

  factory KsText.body2(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.body2,
      );

  factory KsText.title(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.title,
      );

  factory KsText.caption(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.caption,
      );

  factory KsText.headline(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.headline,
      );

  factory KsText.button(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.button,
      );

  factory KsText.subhead(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.subhead,
      );

  factory KsText.subtitle(BuildContext ctx, String text) => KsText(
        text: text,
        style: Theme.of(ctx).textTheme.subtitle,
      );

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: TextAlign.center,);
  }
}
