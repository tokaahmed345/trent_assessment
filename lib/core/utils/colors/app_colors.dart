import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color(0xFF27989E);
  static const Color primaryDark = Color(0xFF1B6F63);
  static const Color primaryLight = Color(0xFFE3F3F1);

  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color transparent = Colors.transparent;

  static const Color redColor = Colors.red;
  static const Color greenColor = Colors.green;
  static const Color orangeColor = Color(0xFFF5A623);
  static const Color favoriteRed = Color(0xFFFF4757);
  static const Color greyColor = Color(0xFF9E9E9E);

  // Light mode
  static const Color lightBackground = Color(0xFFF6F7FB);
  static const Color lightSurface = Colors.white;
  static const Color lightTextPrimary = Color(0xFF1A1A1A);
  static const Color lightTextSecondary = Color(0xFF8E8E93);
  static const Color lightBorder = Color(0xFFEAEAEA);

  // Dark mode
  static const Color darkBackground = Color(0xFF0D1B1A);
  static const Color darkSurface = Color(0xFF132825);
  static const Color darkTextPrimary = Color(0xFFEDEDED);
  static const Color darkTextSecondary = Color(0xFFA0A0A0);
  static const Color darkBorder = Color(0xFF1F3B37);
}

extension AppColorsExtension on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  Color get backgroundColor =>
      isDark ? AppColors.darkBackground : AppColors.lightBackground;

  Color get surfaceColor =>
      isDark ? AppColors.darkSurface : AppColors.lightSurface;

  Color get textPrimary =>
      isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary;

  Color get textSecondary =>
      isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;

  Color get borderColor =>
      isDark ? AppColors.darkBorder : AppColors.lightBorder;
}
