import 'package:flutter/material.dart';

class VDropDownField extends StatefulWidget {
  final List<DropdownMenuItem> items;
  final String placeholder;
  const VDropDownField({Key? key, required this.items, required this.placeholder})
      : super(key: key);

  @override
  State<VDropDownField> createState() => _VDropDownFieldState();
}

class _VDropDownFieldState extends State<VDropDownField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          hintText: widget.placeholder,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          border: const OutlineInputBorder(),
        ),
        iconSize: 30,
        onChanged: (dynamic value) {},
        items: widget.items,
      ),
    );
  }
}
