import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData LightChipTheme = ChipThemeData(
      disabledColor: TColors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: TColors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      checkmarkColor: Colors.white);
}
