import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';

abstract class AppTextStyle {
  static const String _fontFamily = 'ExpoArabic';

  static const TextStyle _base = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.whiteColor,
  );

  static final TextStyle heading20 = _base.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading18 = _base.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle body12Medium = _base.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.0,
    letterSpacing: 0,
  );

  static final TextStyle body14Medium = _base.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle price16Bold = _base.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle caption10 = _base.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );
}