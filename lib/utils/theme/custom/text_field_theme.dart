import 'package:flutter/material.dart';
import 'package:paalii/utils/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  // Light theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.darkerGrey, width: 2),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.primary, width: 2),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.error, width: 2),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.primary, width: 2),
    ),
  );

  // Dark theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.grey, width: 2),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.primary, width: 2),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.error, width: 2),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: TColors.primary, width: 2),
    ),
  );
}
