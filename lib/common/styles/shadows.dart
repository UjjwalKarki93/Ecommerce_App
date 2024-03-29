import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CardShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: EColors.dark.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
  static const horizontalProductShadow = BoxShadow();
}
