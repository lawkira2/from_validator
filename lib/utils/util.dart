import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    useMaterial3: true);

enum Gender { male, female }

enum Education { postGraduate, graduate, hSC, diploma, sSC }

extension StringExtension on String {
  String toCapital() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
EdgeInsetsGeometry bodyPadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12);
