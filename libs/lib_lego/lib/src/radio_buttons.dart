import 'package:flutter/material.dart';

class KsRadio extends StatefulWidget {
  final List labels;

  const KsRadio({Key key, this.labels}) : super(key: key);

  @override
  _KsRadioState createState() => _KsRadioState();
}

class _KsRadioState extends State<KsRadio> {
  int _isRadioSelected = 0;

  void _toggleCheck(int newValue) {
    setState(() {
      _isRadioSelected = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: Text(widget.labels[0]),
          value: 0,
          groupValue: _isRadioSelected,
          onChanged: _toggleCheck,
        ),
        RadioListTile(
          title: Text(widget.labels[1]),
          value: 1,
          groupValue: _isRadioSelected,
          onChanged: _toggleCheck,
        ),
      ],
    );
  }
}
