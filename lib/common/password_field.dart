import 'package:flutter/material.dart';

import '../utils/util.dart';

class PVTextField extends StatefulWidget {
  final String? Function(String?)? validator;
  final bool hasSuffix;
  final void Function(String?)? onSaved;
  final String placeholder;
  const PVTextField(
      {Key? key,
      required this.validator,
      this.hasSuffix = false,
      this.onSaved,
      required this.placeholder})
      : super(key: key);

  @override
  State<PVTextField> createState() => _PVTextFieldState();
}

class _PVTextFieldState extends State<PVTextField> {
  bool obscured = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: widget.placeholder,
            contentPadding: const EdgeInsets.all(8),
            border: const OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock,
              color: theme.primaryColor,
            ),
            suffixIcon: widget.hasSuffix
                ? IconButton(
                    onPressed: () => setState(() {
                          obscured = !obscured;
                        }),
                    iconSize: 20,
                    icon:
                        obscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off))
                : null),
        validator: widget.validator,
        obscureText: obscured,
        onChanged: widget.onSaved,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
