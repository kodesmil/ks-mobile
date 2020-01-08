import 'package:flutter/material.dart';

Widget ksNavigateAndRemoveUntil(BuildContext context, String route) {
  Future.delayed(Duration.zero, () {
    Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
  });
  return Container();
}
