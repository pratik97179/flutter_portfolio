import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/extensions/color/app_colors.dart';
import 'package:portfolio_final/core/design/extensions/font/app_typography.dart';
import 'package:portfolio_final/core/design/extensions/component/app_components.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColors get palette => theme.extension<AppColors>()!;
  AppTypography get typography => theme.extension<AppTypography>()!;
  AppComponents get components => theme.extension<AppComponents>()!;
}
