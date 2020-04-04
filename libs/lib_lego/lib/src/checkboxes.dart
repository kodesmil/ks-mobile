import 'package:flutter/material.dart';

class KsCheckbox extends StatefulWidget {
  final String label;

  const KsCheckbox({Key key, this.label}) : super(key: key);

  @override
  _KsCheckboxState createState() => _KsCheckboxState();
}

class _KsCheckboxState extends State<KsCheckbox> {
  bool _isChecked = false;

  void _toggleCheck(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: Checkbox(
            value: _isChecked,
            onChanged: _toggleCheck,
          ),
        ),
        Container(
          child: Text(widget.label),
        ),
      ],
    );
  }
}
