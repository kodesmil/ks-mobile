import 'package:flutter/material.dart';

enum Options { one, two, three, four }

class PopupMenuWidget extends StatefulWidget {
  PopupMenuWidget({Key key}) : super(key: key);

  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  Options _selection = Options.one;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Options>(
      onSelected: (Options result) {
        setState(() {
          _selection = result;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
        const PopupMenuItem<Options>(
          value: Options.one,
          child: Text('Sample Text 1'),
        ),
        const PopupMenuItem<Options>(
          value: Options.two,
          child: Text('Sample Text 2'),
        ),
        const PopupMenuItem<Options>(
          value: Options.three,
          child: Text('Sample Text 3'),
        ),
        const PopupMenuItem<Options>(
          value: Options.four,
          child: Text('Sample Text 4'),
        ),
      ],
    );
  }
}
