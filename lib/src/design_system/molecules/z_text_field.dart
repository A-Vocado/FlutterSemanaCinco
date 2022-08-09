import 'package:flutter/material.dart';

class ZFormField extends StatelessWidget {
  ZFormField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.textInputAction,
    this.icon,
    required this.onChanged,
    required this.validate,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? icon;
  final dynamic validate;

  final void Function(String?) onChanged;

  final OutlineInputBorder defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Color(0xFF1E232C),
      width: 1.0,
    ),
  );
  final OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.red,
      width: 1.0,
    ),
  );
  final OutlineInputBorder focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.green,
      width: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(22),
            border: defaultBorder,
            errorBorder: errorBorder,
            focusedBorder: focusBorder,
            enabledBorder: defaultBorder,
            hintText: hintText,
            labelText: labelText,
            prefixIcon: icon,
          ),
          onChanged: onChanged,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          validator: validate,
        ),
      );
}
