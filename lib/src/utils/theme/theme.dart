import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_app_flutter/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_app_flutter/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:login_app_flutter/src/utils/theme/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._(); // constructor private

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: OutlinedButtontheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: OutlinedButtontheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}
