import 'package:flutter/material.dart';

abstract class CustomTextSyles {
  static const h1 = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 52,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const h2 = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 38,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const h3 = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const h4 = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const h5 = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const mainBold = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const main = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);

  static const body = TextStyle(
      fontFamily: 'Raleway',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: CustomColors.textPrimaryColor);
}

abstract class CustomColors {
  static const main = Color(0xFFF9F9F9);

  static const layer = Color(0xFFF2F2F2);
  static const accentSecondary = Color(0xFFE5EDFF);

  static const textPrimaryColor = Color(0xFF575757);
  static final divider = textPrimaryColor.withOpacity(0.5);

  static const colorSheme = ColorScheme.light(background: main);
}
