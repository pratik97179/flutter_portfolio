import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/core/design/variants/component/border_token.dart';

class ButtonStyleData {
  final EdgeInsets padding;
  final double radius;
  final ColorRole backgroundRole;
  final ColorRole foregroundRole;
  final TextToken textToken;
  final List<BoxShadow>? shadow;
  final BoxBorder? border;

  const ButtonStyleData({
    required this.padding,
    required this.radius,
    required this.backgroundRole,
    required this.foregroundRole,
    required this.textToken,
    this.shadow,
    this.border,
  });

  Color resolveBackground(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) =>
      context.palette.designColors.resolve(backgroundRole, state);

  Color resolveForeground(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) =>
      context.palette.designColors.resolve(foregroundRole, state);

  TextStyle resolveTextStyle(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) {
    final base = context.typography.resolve(textToken);
    return base.copyWith(color: resolveForeground(context, state));
  }

  ResolvedButtonStyle resolve(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) {
    return ResolvedButtonStyle(
      padding: padding,
      radius: radius,
      backgroundColor: resolveBackground(context, state),
      foregroundColor: resolveForeground(context, state),
      textStyle: resolveTextStyle(context, state),
      shadow: shadow,
      border: border,
    );
  }
}

class ResolvedButtonStyle {
  final EdgeInsets padding;
  final double radius;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;
  final List<BoxShadow>? shadow;
  final BoxBorder? border;

  const ResolvedButtonStyle({
    required this.padding,
    required this.radius,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.textStyle,
    this.shadow,
    this.border,
  });
}

class CardStyleData {
  final double radius;
  final ColorRole backgroundRole;
  final EdgeInsets padding;
  final ShadowToken shadow;
  final BorderToken border;

  const CardStyleData({
    required this.radius,
    required this.backgroundRole,
    required this.padding,
    this.shadow = ShadowToken.none,
    this.border = BorderToken.none,
  });

  Color resolveBackground(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) =>
      context.palette.designColors.resolve(backgroundRole, state);

  BoxDecoration buildDecoration(
    BuildContext context, [
    InteractionState state = InteractionState.base,
  ]) {
    return BoxDecoration(
      color: resolveBackground(context, state),
      borderRadius: BorderRadius.circular(radius),
      boxShadow: shadow.value,
      border: border.value,
    );
  }
}

class ComponentTheme {
  final Map<ButtonType, ButtonStyleData> buttonTokens;
  final Map<ComponentToken, CardStyleData> cardTokens;

  const ComponentTheme({
    required this.buttonTokens,
    required this.cardTokens,
  });

  ButtonStyleData resolveButton(ButtonType type) => buttonTokens[type]!;

  ResolvedButtonStyle resolveButtonStyle(
    BuildContext context,
    ButtonType type, [
    InteractionState state = InteractionState.base,
  ]) {
    return buttonTokens[type]!.resolve(context, state);
  }

  CardStyleData resolveCard(ComponentToken token) => cardTokens[token]!;
}
