import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_form/utils/util.dart';

class VTextField extends StatefulWidget {
  final IconData? icon;
  final String? Function(String?) validator;
  final List<TextInputFormatter>? format;
  final TextInputType? keyboard;
  final bool obscured;
  final String placeholder;
  const VTextField(
      {Key? key,
      this.icon,
      required this.validator,
      this.obscured = false,
      this.format,
      this.keyboard,
      required this.placeholder})
      : super(key: key);

  @override
  State<VTextField> createState() => _VTextFieldState();
}

class _VTextFieldState extends State<VTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: widget.placeholder,
            contentPadding: const EdgeInsets.all(8),
            border: const OutlineInputBorder(),
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: theme.primaryColor,
                  )
                : null),
        validator: widget.validator,
        obscureText: widget.obscured,
        inputFormatters: widget.format,
        keyboardType: widget.keyboard,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
