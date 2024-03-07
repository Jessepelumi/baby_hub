import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  // Light theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 12.0,
    ),
    checkmarkColor: Colors.white,
  );

  // Dark theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 12.0,
    ),
    checkmarkColor: Colors.white,
  );
}
