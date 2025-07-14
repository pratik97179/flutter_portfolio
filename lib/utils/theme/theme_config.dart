import 'package:flutter/material.dart';
import 'package:portfolio_final/utils/theme/app_pallette.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  extensions: <ThemeExtension<dynamic>>[
    AppPalette.light,
  ],
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  extensions: <ThemeExtension<dynamic>>[
    AppPalette.dark,
  ],
);
