import 'package:flutter/material.dart';

class DateFieldWidget extends StatelessWidget {
  final String hint;
  final String errorText;
  final TextEditingController textController;
  final Function(DateTime) selectedDate;
  final EdgeInsets padding;
  final Color hintColor;
  final ValueChanged onFieldSubmitted;
  final bool autoFocus;

  const DateFieldWidget({
    Key key,
    this.hint,
    this.errorText,
    this.textController,
    this.selectedDate,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.onFieldSubmitted,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: () async => selectedDate(await showDatePicker(
          context: context,
          initialDate: DateTime.now().subtract(Duration(days: 365 * 28)),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          builder: (BuildContext context, Widget child) => Theme(
            data: ThemeData.dark(),
            child: child,
          ),
        )),
        child: Container(
          color: Colors.transparent,
          child: IgnorePointer(
            child: TextFormField(
              controller: textController,
              style: Theme.of(context).textTheme.body1,
              decoration: InputDecoration(
                labelText: this.hint,
                labelStyle: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
                errorText: errorText,
                counterText: '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
