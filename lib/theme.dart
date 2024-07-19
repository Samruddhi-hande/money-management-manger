import 'package:flutter/material.dart';

const MaterialColor PrimaryMaterialColor = MaterialColor(
  4279567515,
  <int, Color>{
    50: Color.fromRGBO(
      198,
      17,
      208,
      0.10196078431372549,
    ),
    100: Color.fromRGBO(
      51,
      27,
      215,
      0.2,
    ),
    200: Color.fromRGBO(
      185,
      19,
      189,
      0.30196078431372547,
    ),
    300: Color.fromRGBO(
      149,
      139,
      215,
      0.4,
    ),
    400: Color.fromRGBO(
      126,
      18,
      213,
      0.5019607843137255,
    ),
    500: Color.fromRGBO(
      189,
      188,
      208,
      0.6,
    ),
    600: Color.fromRGBO(
      173,
      10,
      231,
      0.7019607843137254,
    ),
    700: Color.fromRGBO(
      144,
      103,
      187,
      0.8,
    ),
    800: Color.fromRGBO(
      77,
      4,
      105,
      0.9019607843137255,
    ),
    900: Color.fromRGBO(
      169,
      27,
      222,
      1.0,
    ),
  },
);

ThemeData myTheme = ThemeData(
  fontFamily: "customFont",
  primaryColor: Color(0xffd6d3e3),
  primarySwatch: PrimaryMaterialColor,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 20.0,
      fontFamily: "customFont",
      fontWeight: FontWeight.w600,
    ),
  ),
);
