// theme/extensions.dart
import 'package:flutter/material.dart';
import 'package:portfolio_final/utils/theme/app_pallette.dart';

extension PaletteExtension on ThemeData {
  AppPalette get palette => extension<AppPalette>()!;
}

extension ContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}
