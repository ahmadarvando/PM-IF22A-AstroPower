import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TColors {
  TColors._();

  //app basic color
  static const Color Primary = Color(0xF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  //Gradient Colors
  static const Gradient LinerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //Text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textsecondary = Color(0xFF6C757D);
  static const Color textwhite = Colors.white;

  //Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color PrimaryBackground = Color(0xFFF3F5FF);

  // Background container colors
  static const Color LightContainer = Color(0xfff6f6f6);
  static Color darkContainer = TColors.textwhite.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonDisabled = Color(0xffc4c4c4c4);

  //border colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  //eror end validation color
  static const Color eror = Color(0xffd32f2f);
  static const Color sucsses = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  //neutral shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkgrey = Color(0xff939393);
  static const Color grey = Color(0xfffffffff);
}
