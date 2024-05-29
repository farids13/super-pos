import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class MyLightTheme {
  MyLightTheme(this.primaryColor);

  final Color primaryColor;

  final Color errorColor = MyAppColors.red;
  final Color textColor = MyAppColors.black;
  final Color borderColor = MyAppColors.white[600]!;

  ColorScheme get colorScheme => ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        error: errorColor,
      );

  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: MyDimens.dp32,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
        headlineMedium: TextStyle(
          fontSize: MyDimens.dp24,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
        headlineSmall: TextStyle(
          fontSize: MyDimens.dp20,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
        titleLarge: TextStyle(
          fontSize: MyDimens.dp18,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
        titleMedium: TextStyle(
          fontSize: MyDimens.dp16,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
        bodyLarge: TextStyle(
          fontSize: MyDimens.dp16,
          fontWeight: FontWeight.normal,
          color: textColor,
        ),
        bodyMedium: TextStyle(
          fontSize: MyDimens.dp14,
          fontWeight: FontWeight.normal,
          color: textColor,
        ),
        labelMedium: TextStyle(
          fontSize: MyDimens.dp12,
          fontWeight: FontWeight.normal,
          color: textColor,
        ),
      );

  CardTheme get cardTheme => CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MyDimens.dp8),
            side: BorderSide(
              color: borderColor,
            )),
      );

  ThemeData get theme => ThemeData(
      fontFamily: 'Poppins',
      colorScheme: colorScheme,
      useMaterial3: true,
      primaryColor: primaryColor,
      brightness: Brightness.light,
      textTheme: textTheme,
      cardTheme: cardTheme);
}
