import 'package:flutter/material.dart';

ksShowErrorMessage(BuildContext context, String message) {
  Future.delayed(Duration.zero, () {
    if (message?.isNotEmpty == true) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
    }
  });
  return Container();
}
