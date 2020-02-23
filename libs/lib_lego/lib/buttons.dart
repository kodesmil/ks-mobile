import 'package:flutter/material.dart';
import 'package:lib_lego/texts.dart';

class KsRoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const KsRoundedButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
        shape: StadiumBorder(),
        onPressed: onPressed,
        child: KsText.button(text),
      );
}

class KsRaisedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const KsRaisedButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        shape: StadiumBorder(),
        onPressed: onPressed,
        child: KsText(
          text,
          style:
              Theme.of(context).textTheme.button.copyWith(color: Colors.white),
        ),
      );
}
