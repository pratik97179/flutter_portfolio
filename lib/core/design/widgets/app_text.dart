import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';

class AppText extends StatefulWidget {
  const AppText(
    this.text, {
    required this.token,
    this.hoverColorRole,
    this.hoverFontWeight,
    this.onTap,
    this.textAlign,
    this.maxLines,
    this.overflow,
    super.key,
    this.allowHover = false,
  }) : assert(
          !(!allowHover && (hoverColorRole != null && hoverFontWeight != null)),
          'Hover properties must not be provided if $allowHover is false',
        );

  final String text;
  final TextToken token;
  final ColorRole? hoverColorRole;
  final FontWeight? hoverFontWeight;
  final VoidCallback? onTap;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool allowHover;

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette.designColors;
    final typography = context.typography;
    final baseStyle = typography.resolve(widget.token);

    final defaultColorRole = typography.defaultColorRoleFor(widget.token);
    final baseColor = palette.resolve(defaultColorRole);
    final hoverColor = widget.hoverColorRole != null
        ? palette.resolve(widget.hoverColorRole!)
        : palette.resolve(defaultColorRole, InteractionState.hover);

    final effectiveStyle = baseStyle.copyWith(
      color: isHovered ? hoverColor : baseColor,
      fontWeight: isHovered
          ? (widget.hoverFontWeight ?? baseStyle.fontWeight)
          : baseStyle.fontWeight,
    );

    final textWidget = AnimatedDefaultTextStyle(
      style: effectiveStyle,
      duration: const Duration(milliseconds: 50),
      child: Text(
        widget.text,
        textAlign: widget.textAlign,
        maxLines: widget.maxLines,
        overflow: widget.overflow,
      ),
    );

    final gesture = widget.onTap != null
        ? GestureDetector(onTap: widget.onTap, child: textWidget)
        : textWidget;

    return widget.allowHover
        ? MouseRegion(
            onEnter: (_) => _setHover(true),
            onExit: (_) => _setHover(false),
            cursor: widget.onTap != null
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            child: gesture,
          )
        : gesture;
  }

  void _setHover(bool value) {
    if (mounted) {
      setState(() => isHovered = value);
    }
  }
}
