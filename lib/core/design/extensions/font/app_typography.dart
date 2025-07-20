import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final Map<TextToken, TextStyle> styles;

  const AppTypography(this.styles);

  @override
  AppTypography copyWith({Map<TextToken, TextStyle>? styles}) =>
      AppTypography(styles ?? this.styles);

  @override
  AppTypography lerp(ThemeExtension<AppTypography>? other, double t) => this;

  TextStyle resolve(TextToken token) => styles[token] ?? const TextStyle();

  ColorRole defaultColorRoleFor(TextToken token) {
    switch (token) {
      case TextToken.h1:
      case TextToken.h2:
      case TextToken.h3:
        return ColorRole.text;
      case TextToken.subtitle1:
      case TextToken.body1:
      case TextToken.body2:
        return ColorRole.textExtraLight;
      case TextToken.label:
        return ColorRole.text;
      case TextToken.name:
        return ColorRole.name;
    }
  }
}
