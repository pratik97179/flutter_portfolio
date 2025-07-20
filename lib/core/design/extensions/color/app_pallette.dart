import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/models/color/design_color_token.dart';
import 'package:portfolio_final/core/design/models/color/design_colors.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  final DesignColors colors;

  const AppPalette({required this.colors});

  static final light = const AppPalette(colors: lightDesignColors);
  static final dark = const AppPalette(colors: darkDesignColors);

  @override
  AppPalette copyWith({DesignColors? colors}) =>
      AppPalette(colors: colors ?? this.colors);

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) => this;
}
