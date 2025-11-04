import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseTextField extends StatelessWidget {
  final Widget? suffix;
  final String? labelText;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final String? initialValue;

  BaseTextField({
    Key? key,
    this.suffix,
    this.labelText,
    this.hintText,
    this.inputFormatters,
    this.onSaved,
    this.validator,
    this.controller,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      onSaved: onSaved,
      validator: validator,
      maxLines: 1,
      initialValue: initialValue,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
