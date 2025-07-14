import 'package:flutter/material.dart';

@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  final Color surfaceLight;
  final Color surfaceLightTranslucent;
  final Color surfaceNormal;
  final Color surfaceDark;
  final Color black;
  final Color white;
  final Color textGreyLight;
  final Color borderColor;

  const AppPalette({
    required this.textGreyLight,
    required this.surfaceLight,
    required this.surfaceLightTranslucent,
    required this.surfaceNormal,
    required this.surfaceDark,
    required this.borderColor,
    this.black = Colors.black,
    this.white = Colors.white,
  });

  /// Light theme palette
  static const AppPalette light = AppPalette(
    surfaceLight: Color.fromARGB(255, 225, 225, 225),
    surfaceLightTranslucent: Color.fromARGB(251, 225, 225, 225),
    surfaceNormal: Color.fromARGB(255, 225, 225, 225),
    surfaceDark: Color(0xFFF2F2F2),
    textGreyLight: Color.fromARGB(255, 114, 114, 114),
    borderColor: Color.fromARGB(255, 185, 185, 185),
  );

  /// Dark theme palette (choose high contrast)
  static const AppPalette dark = AppPalette(
    surfaceLight: Color(0xFF1E1E1E),
    surfaceLightTranslucent: Color(0xFF2C2C2C),
    surfaceNormal: Color(0xFF2A2A2A),
    surfaceDark: Color(0xFF121212),
    black: Colors.white,
    white: Colors.black,
    textGreyLight: Color.fromARGB(255, 189, 189, 189),
    borderColor: Color.fromARGB(255, 70, 70, 70),
  );

  @override
  AppPalette copyWith({
    Color? surfaceLight,
    Color? surfaceLightTranslucent,
    Color? surfaceNormal,
    Color? surfaceDark,
    Color? textGreyLight,
    Color? borderColor,
  }) {
    return AppPalette(
      surfaceLight: surfaceLight ?? this.surfaceLight,
      surfaceLightTranslucent:
          surfaceLightTranslucent ?? this.surfaceLightTranslucent,
      surfaceNormal: surfaceNormal ?? this.surfaceNormal,
      surfaceDark: surfaceDark ?? this.surfaceDark,
      textGreyLight: textGreyLight ?? this.textGreyLight,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) {
      return this;
    }
    return AppPalette(
      surfaceLight: Color.lerp(surfaceLight, other.surfaceLight, t)!,
      surfaceLightTranslucent: Color.lerp(
          surfaceLightTranslucent, other.surfaceLightTranslucent, t)!,
      surfaceNormal: Color.lerp(surfaceNormal, other.surfaceNormal, t)!,
      surfaceDark: Color.lerp(surfaceDark, other.surfaceDark, t)!,
      textGreyLight: Color.lerp(textGreyLight, other.textGreyLight, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
