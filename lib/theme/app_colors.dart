import 'package:flutter/material.dart';

/// アプリケーション全体で使用するカラーパレット
class AppColors {
  AppColors._();

  // ライトモード
  static const Color lightPrimary = Color(0xFF2196F3);
  static const Color lightSecondary = Color(0xFF03A9F4);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightError = Color(0xFFD32F2F);
  static const Color lightOnPrimary = Color(0xFFFFFFFF);
  static const Color lightOnBackground = Color(0xFF000000);
  static const Color lightOnSurface = Color(0xFF000000);

  // ダークモード
  static const Color darkPrimary = Color(0xFF42A5F5);
  static const Color darkSecondary = Color(0xFF29B6F6);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkError = Color(0xFFEF5350);
  static const Color darkOnPrimary = Color(0xFF000000);
  static const Color darkOnBackground = Color(0xFFFFFFFF);
  static const Color darkOnSurface = Color(0xFFFFFFFF);

  // 共通カラー
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // GitHub特有のカラー
  static const Color githubStar = Color(0xFFFFC107);
  static const Color githubFork = Color(0xFF607D8B);
  static const Color githubIssue = Color(0xFFE91E63);
}
