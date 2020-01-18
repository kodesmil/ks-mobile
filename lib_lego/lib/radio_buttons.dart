import 'package:flutter/material.dart';

class KsRadio extends StatefulWidget {
  final String label;

  const KsRadio({Key key, this.label}) : super(key: key);

  @override
  _KsRadioState createState() => _KsRadioState();
}

class _KsRadioState extends State<KsRadio> {
  int _isRadioSelected = 0;

  void _toggleCheck(int newValue) {
    print(newValue);
    setState(() {
      _isRadioSelected = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RadioListTile(
          title: const Text('Sample Text 1'),
          value: 0,
          groupValue: _isRadioSelected,
          onChanged: _toggleCheck,
        ),
        RadioListTile(
          title: const Text('Sample Text 2'),
          value: 1,
          groupValue: _isRadioSelected,
          onChanged: _toggleCheck,
        ),
      ],
    );
  }
}
