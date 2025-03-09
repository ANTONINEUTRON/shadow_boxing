import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle heading1(BuildContext context) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle heading2(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle heading3(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodySmall(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

}
