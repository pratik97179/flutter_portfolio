import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/models/component/component_theme.dart';

class AppComponents extends ThemeExtension<AppComponents> {
  final ComponentTheme components;

  const AppComponents(this.components);

  @override
  AppComponents copyWith({ComponentTheme? components}) =>
      AppComponents(components ?? this.components);

  @override
  AppComponents lerp(ThemeExtension<AppComponents>? other, double t) => this;
}
