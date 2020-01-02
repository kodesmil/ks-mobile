import 'package:flutter/material.dart';

class DateFieldWidget extends StatefulWidget {
  final String hint;
  final String errorText;
  final IconData icon;
  final TextEditingController textController;
  final Function(DateTime) selectedDate;
  final EdgeInsets padding;
  final Color hintColor;
  final ValueChanged onFieldSubmitted;
  final bool autoFocus;
  final FocusNode focusNode;

  const DateFieldWidget({
    Key key,
    this.icon,
    this.hint,
    this.errorText,
    this.textController,
    this.selectedDate,
    this.focusNode,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.onFieldSubmitted,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  _DateFieldWidgetState createState() => _DateFieldWidgetState();
}

class _DateFieldWidgetState extends State<DateFieldWidget> {
  bool calendarPressed = false;

  @override
  void initState() {
    widget.focusNode.addListener(onListenerTap);
    super.initState();
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(onListenerTap);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: widget.padding,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.transparent,
            child: IgnorePointer(
              child: TextFormField(
                controller: widget.textController,
                style: Theme.of(context).textTheme.body1,
                decoration: InputDecoration(
                  prefixIcon: Icon(widget.icon),
                  labelText: widget.hint,
                  labelStyle: Theme.of(context).textTheme.body1.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
                  errorText: widget.errorText,
                  counterText: '',
                ),
              ),
            ),
          ),
        ),
      );

  void onListenerTap() async {
    if (widget.focusNode.hasPrimaryFocus && !calendarPressed) {
      setState(() {
        calendarPressed = true;
      });
      onTap();
    }
  }

  void onTap() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(
        Duration(days: 365 * 28),
      ),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget child) => Theme(
        data: ThemeData.dark(),
        child: child,
      ),
    );
    if (date != null) {
      widget.selectedDate(date);
    }
  }
}
