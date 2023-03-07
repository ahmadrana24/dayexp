import 'package:flutter/material.dart';

class AppConstants {
  static const TextStyle appBarStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle homeSubtitleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle dialogueStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static BoxShadow homeContainerShadow = BoxShadow(
    color: const Color(0xff4B7EFF).withOpacity(0.3),
    spreadRadius: 0,
    blurRadius: 3,
    offset: const Offset(10, 10),
  );
}
