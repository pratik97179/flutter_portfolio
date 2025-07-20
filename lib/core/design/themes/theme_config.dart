import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/core/design/models/color/design_colors.dart';
import 'package:portfolio_final/core/design/models/font/font_styles.dart';
import 'package:portfolio_final/core/design/models/component/component_style.dart';

final _textTheme = ThemeData.light().textTheme.apply(fontFamily: 'Commissioner');

final ThemeData lightTheme = ThemeData.light().copyWith(
  textTheme: _textTheme,
  scaffoldBackgroundColor: lightDesignColors.resolve(ColorRole.surface),
  extensions: [
    const AppColors(lightDesignColors),
    AppTypography(lightFontStyles),
    AppComponents(lightComponentTheme),
  ],
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  textTheme: _textTheme,
  scaffoldBackgroundColor: darkDesignColors.resolve(ColorRole.surface),
  extensions: [
    const AppColors(darkDesignColors),
    AppTypography(darkFontStyles),
    AppComponents(darkComponentTheme),
  ],
);
