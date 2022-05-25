import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  late final String text;
  Label({Key? key, required String labelText}) : super(key: key) {
    text = labelText;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}

Widget HeadlingText({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
