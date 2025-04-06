import 'package:flutter/material.dart';

ThemeData lightmode=ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary:  Color.fromARGB(255, 33, 33, 33),

  )
);
ThemeData darkmode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background:  Color.fromARGB(255, 36, 36, 36),
    secondary:  Color.fromARGB(255, 86, 86, 86)
  )
);