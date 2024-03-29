import 'package:dayexp/res/app_colors.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static TextStyle appBarStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle homeSubtitleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle dialogueStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle priceTextStyle = TextStyle(
    fontSize: 38,
    color: AppColors.primaryColor,
  );
  static BoxShadow homeContainerShadow = BoxShadow(
    color: AppColors.primaryColor.withOpacity(0.3),
    spreadRadius: 0,
    blurRadius: 3,
    offset: const Offset(0, 5),
  );
}
