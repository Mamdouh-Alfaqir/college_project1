import 'package:flutter/material.dart';
 
class AppColors {
  // ===== Light mode =====
  static const bgPage = Color(0xFFFFFFFF);
  static const sidebar = Color(0xFFF9F9F9);
  static const sidebarHover = Color(0xFFECECEC);
 
  static const bubbleAi = Color(0xFFFFFFFF);
  static const bubbleUser = Color(0xFFF4F4F4);
 
  static const textPrimary = Color(0xFF0D0D0D);
  static const textSecondary = Color(0xFF6E6E80);
  static const textMuted = Color(0xFF8E8EA0);
 
  static const textSidebar = Color(0xFF0D0D0D);
  static const textSidebarMuted = Color(0xFF6E6E80);
 
  static const accent = Color(0xFF0D0D0D);
  static const accentDark = Color(0xFF000000);
  static const link = Color(0xFF2563EB);
 
  static const border = Color(0xFFE5E5E5);
  static const borderStrong = Color(0xFFD1D1D1);
 
  static const danger = Color(0xFFD93025);
 
  // ===== Dark mode =====
  static const darkBgPage = Color(0xFF121212);          // near-black, softer than pure black
  static const darkSurface = Color(0xFF2A2A2A);          // AI response bubbles
  static const darkSurface2 = Color(0xFF383838);
 
  static const darkBubbleUser = Color(0xFF3A3A3A);       // your messages (grey)
  static const darkBubbleAi = Color(0xFF212121);         // response messages (dark grey)
  static const darkChip = Color(0xFF2F2F2F);             // suggested question chips
  static const darkChipBorder = Color(0xFF4D4D4F);
  static const darkModeToggleFill = Color(0xFF3A3A3A);   // mode-switch button
 
  static const darkTextPrimary = Color(0xFFFFFFFF);      // pure white
  static const darkTextSecondary = Color(0xFFB4B4B4);
  static const darkTextMuted = Color(0xFF8E8E8E);
  static const darkLink = Color(0xFF3B82F6);             // reference/citation links, blue
 
  static const darkBorder = Color(0xFF2F2F2F);
  static const darkBorderStrong = Color(0xFF4D4D4F);
}
 
ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgPage,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.light(
      primary: AppColors.accent,
      secondary: AppColors.accent,
      surface: AppColors.bgPage,
      onSurface: AppColors.textPrimary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bgPage,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
  );
}
 
ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBgPage,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkTextPrimary,
      secondary: AppColors.darkTextPrimary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBgPage,
      foregroundColor: AppColors.darkTextPrimary,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
  );
}