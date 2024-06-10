import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.LightChipTheme,
    appBarTheme: TAppBarTheme.LightAppBarTheme,
    checkboxTheme: TcheckboxTheme.LightCheckboxTheme,
    elevatedButtonTheme: TELevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.LightOutlinedButtonTheme,
    inputDecorationTheme: TTextFromFieldTheme.LightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.DarkChipTheme,
    appBarTheme: TAppBarTheme.DarkAppBarTheme,
    checkboxTheme: TcheckboxTheme.DarkCheckboxTheme,
    elevatedButtonTheme: TELevatedButtonTheme.DarkElevatedButtonTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.DarkOutlinedButtonTheme,
    inputDecorationTheme: TTextFromFieldTheme.DarkInputDecorationTheme,
  );
}
