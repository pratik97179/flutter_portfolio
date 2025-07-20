import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/core/design/models/component/component_theme.dart';
import 'package:portfolio_final/core/design/variants/component/border_token.dart';
import 'package:sizer/sizer.dart';

final ComponentTheme lightComponentTheme = ComponentTheme(
  buttonTokens: {
    ButtonType.text: const ButtonStyleData(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      backgroundRole: ColorRole.surface,
      foregroundRole: ColorRole.text,
      radius: 0,
      textToken: TextToken.body2,
    ),
    ButtonType.pill: ButtonStyleData(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1.h),
      backgroundRole: ColorRole.cta,
      foregroundRole: ColorRole.surfaceLight,
      radius: 999,
      textToken: TextToken.body2,
    ),
    ButtonType.textImage: const ButtonStyleData(
      padding: EdgeInsets.all(12),
      backgroundRole: ColorRole.surfaceLight,
      foregroundRole: ColorRole.text,
      radius: 8,
      textToken: TextToken.body1,
    ),
  },
  cardTokens: {
    ComponentToken.card: const CardStyleData(
      radius: 16,
      backgroundRole: ColorRole.surfaceDark,
      padding: EdgeInsets.all(16),
      shadow: ShadowToken.md,
      border: BorderToken.thin,
    ),
  },
);

final ComponentTheme darkComponentTheme = const ComponentTheme(
  buttonTokens: {
    ButtonType.text: ButtonStyleData(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      backgroundRole: ColorRole.surface,
      foregroundRole: ColorRole.text,
      radius: 0,
      textToken: TextToken.body2,
    ),
    ButtonType.pill: ButtonStyleData(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      backgroundRole: ColorRole.cta,
      foregroundRole: ColorRole.surface,
      radius: 999,
      textToken: TextToken.label,
    ),
    ButtonType.textImage: ButtonStyleData(
      padding: EdgeInsets.all(12),
      backgroundRole: ColorRole.surfaceDark,
      foregroundRole: ColorRole.text,
      radius: 8,
      textToken: TextToken.body1,
    ),
  },
  cardTokens: {
    ComponentToken.card: CardStyleData(
      radius: 16,
      backgroundRole: ColorRole.surface,
      padding: EdgeInsets.all(16),
      shadow: ShadowToken.md,
      border: BorderToken.thin,
    ),
  },
);
