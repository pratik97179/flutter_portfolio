import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/models/color/design_color_token.dart';

class AppColors extends ThemeExtension<AppColors> {
  final DesignColors designColors;

  const AppColors(this.designColors);

  @override
  AppColors copyWith({DesignColors? designColors}) =>
      AppColors(designColors ?? this.designColors);

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) => this;
}
