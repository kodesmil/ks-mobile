import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ksNavigateNamedAndRemoveUntil(BuildContext context, String route) {
  Future.delayed(Duration.zero, () {
    Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
  });
  return Container();
}

Widget ksNavigateAndRemoveUntil(BuildContext context, CupertinoPageRoute route) {
  Future.delayed(Duration.zero, () {
    Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
  });
  return Container();
}
