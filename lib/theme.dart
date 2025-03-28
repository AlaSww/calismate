import 'package:flutter/material.dart';

ThemeData lightmode=ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.black

  )
);
ThemeData darkmode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 38, 38, 38),
    primary: Colors.white
  )
);