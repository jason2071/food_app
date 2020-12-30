import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Mali",
    appBarTheme: AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      centerTitle: true,
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    canvasColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
