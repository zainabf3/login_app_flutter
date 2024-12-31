import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/constants/colors.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: secondaryColor,
          floatingLabelStyle: TextStyle(color: secondaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: secondaryColor)));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: primaryColor,
          floatingLabelStyle: TextStyle(color: primaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: primaryColor)));
}
