import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const RoundedButtonWidget({
    Key key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Text(
        buttonText,
      ),
    );
  }
}
