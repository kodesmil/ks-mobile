import 'package:flutter/material.dart';

class KsTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final String label;
  final String errorText;
  final bool isObscure;
  final TextInputType inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final FocusNode focusNode;
  final ValueChanged onFieldSubmitted;
  final ValueChanged onFieldChanged;
  final bool autoFocus;
  final TextInputAction inputAction;
  final TextCapitalization textCapitalization;
  final int minLines;

  const KsTextField({
    Key key,
    this.icon,
    this.hint,
    this.label,
    this.errorText,
    this.isObscure = false,
    this.inputType,
    this.textController,
    this.padding = const EdgeInsets.all(0),
    this.focusNode,
    this.onFieldSubmitted,
    this.onFieldChanged,
    this.autoFocus = false,
    this.inputAction,
    this.minLines,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: textController,
        focusNode: focusNode,
        textCapitalization: textCapitalization,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onFieldChanged,
        autofocus: autoFocus,
        textInputAction: inputAction,
        obscureText: isObscure,
        minLines: minLines,
        keyboardType: inputType,
        style: Theme.of(context).textTheme.bodyText2,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: label,
          hintText: hint,
          errorText: errorText,
          counterText: '',
        ),
      ),
    );
  }
}
