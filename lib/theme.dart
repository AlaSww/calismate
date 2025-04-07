import 'package:flutter/material.dart';

ThemeData lightmode=ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary:  Color.fromARGB(255, 222, 222, 222),

  ),
);
ThemeData darkmode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background:  Color.fromARGB(255, 36, 36, 36),
    primary:  Color.fromARGB(255, 32, 32, 32)
  )
);