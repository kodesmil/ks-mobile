import 'package:flutter/material.dart';
import 'package:lib_lego/theme.dart';
import 'package:lib_lego/widgets/spaces.dart';
import 'package:lib_lego/widgets/texts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KodeSmil Lego',
      theme: MfThemeData.light(),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (ctx, cns) =>
              ListView(
                children: <Widget>[
                  Container(
                    color: Colors.orange,
                    height: 20,
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
