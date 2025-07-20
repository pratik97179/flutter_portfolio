import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/variants/font/text_token.dart';
import 'package:sizer/sizer.dart';

final Map<TextToken, TextStyle> lightFontStyles = {
  TextToken.h1: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
  TextToken.h2: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  TextToken.body1: const TextStyle(fontSize: 16),
  TextToken.body2: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w300),
  TextToken.label: const TextStyle(fontSize: 12, letterSpacing: 1.1),
  TextToken.name: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300),
};

final Map<TextToken, TextStyle> darkFontStyles = lightFontStyles;
