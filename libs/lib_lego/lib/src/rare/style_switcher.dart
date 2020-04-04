import 'package:flutter/material.dart';

import '../themes.dart';

class StyleChoice {
  ThemeData style;
  String name;

  StyleChoice({
    this.style,
    this.name,
  });
}

class StyleSwitcherDialog extends StatefulWidget {
  final Function(ThemeData) onChange;

  StyleSwitcherDialog({Key key, this.onChange}) : super(key: key);

  @override
  _StyleSwitcherDialogState createState() => _StyleSwitcherDialogState();
}

class _StyleSwitcherDialogState extends State<StyleSwitcherDialog> {
  final styleChoices = [
    StyleChoice(
      style: KsTheme.motimLight(),
      name: 'Motim Light',
    ),
    StyleChoice(
      style: KsTheme.motimDark(),
      name: 'Motim Dark',
    ),
    StyleChoice(
      style: KsTheme.fotosmilLight(),
      name: 'FotoSmil Light',
    ),
    StyleChoice(
      style: KsTheme.fotosmilDark(),
      name: 'FotoSmil Dark',
    ),
  ];

  StyleChoice chosenOne;

  @override
  Widget build(BuildContext context) => SimpleDialog(
        title: const Text('Select Theme'),
        children: styleChoices
            .map((style) => RadioListTile<StyleChoice>(
                  value: style,
                  groupValue: chosenOne,
                  onChanged: (StyleChoice value) {
                    setState(() {
                      chosenOne = style;
                      widget.onChange(style.style);
                    });
                  },
                  title: Text(style.name),
                ))
            .toList(),
      );
}
