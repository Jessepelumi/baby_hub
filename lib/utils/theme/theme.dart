import 'package:baby_hub/utils/theme/custom/appbar_theme.dart';
import 'package:baby_hub/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:baby_hub/utils/theme/custom/checkbox_theme.dart';
import 'package:baby_hub/utils/theme/custom/chip_theme.dart';
import 'package:baby_hub/utils/theme/custom/elevated_button_theme.dart';
import 'package:baby_hub/utils/theme/custom/outlined_button_theme.dart';
import 'package:baby_hub/utils/theme/custom/text_field_theme.dart';
import 'package:baby_hub/utils/theme/custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._();

  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
