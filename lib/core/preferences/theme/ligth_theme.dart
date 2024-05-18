import 'package:flutter/material.dart';

class MyLightTheme {
  MyLightTheme(this.primaryColor);

  final Color primaryColor;

  ColorScheme get colorScheme => ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        error: Colors.red,
      );

  ThemeData get theme => ThemeData(
        fontFamily: 'Poppins',
        colorScheme: colorScheme,
        useMaterial3: true,
        primaryColor: primaryColor,
        brightness: Brightness.light,
      );
}
