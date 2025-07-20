// import 'package:flutter/material.dart';

// class TextWithHoverEffect extends StatefulWidget {
//   const TextWithHoverEffect(
//     this.text, {
//     super.key,
//     this.style,
//     this.hoverColor,
//     this.hoverFontWeight,
//   });

//   final String? text;
//   final TextStyle? style;
//   final Color? hoverColor;
//   final FontWeight? hoverFontWeight;

//   @override
//   State<TextWithHoverEffect> createState() => _TextWithHoverEffectState();
// }

// class _TextWithHoverEffectState extends State<TextWithHoverEffect> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       onEnter: (event) => onEntered(true),
//       onExit: (event) => onEntered(false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 100),
//         child: Text(
//           widget.text ?? '',
//           style: widget.style?.copyWith(
//             color: isHovered ? widget.hoverColor : widget.style?.color,
//             fontWeight: isHovered ? widget.hoverFontWeight : widget.style?.fontWeight,
//           ),
//         ),
//       ),
//     );
//   }

//   void onEntered(bool isHovered) => setState(() {
//     this.isHovered = isHovered;
//   });
// }
// /*
// import 'package:flutter/material.dart';
// import '../design_system/extensions/app_typography.dart';
// import '../design_system/extensions/app_colors.dart';
// import '../design_system/tokens/text_token.dart';
// import '../design_system/tokens/color_role.dart';
// import '../design_system/tokens/interaction_state.dart';

// class AppText extends StatefulWidget {
//   const AppText(
//     this.text, {
//     super.key,
//     this.token,
//     this.colorRole,
//     this.hoverColorRole,
//     this.onTap,
//     this.textAlign,
//     this.maxLines,
//     this.overflow,
//     this.style, // fallback if token is not provided
//     this.hoverFontWeight,
//   });

//   final String text;
//   final TextToken? token;
//   final ColorRole? colorRole;
//   final ColorRole? hoverColorRole;
//   final FontWeight? hoverFontWeight;
//   final VoidCallback? onTap;
//   final TextAlign? textAlign;
//   final int? maxLines;
//   final TextOverflow? overflow;
//   final TextStyle? style;

//   @override
//   State<AppText> createState() => _AppTextState();
// }

// class _AppTextState extends State<AppText> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final typography = theme.extension<AppTypography>()?.fonts;
//     final colors = theme.extension<AppColors>()?.designColors;

//     final baseStyle = widget.token != null && typography != null
//         ? typography.resolve(widget.token!)
//         : (widget.style ?? const TextStyle());

//     final baseColor = widget.colorRole != null && colors != null
//         ? colors.resolve(widget.colorRole!)
//         : baseStyle.color;

//     final hoverColor = widget.hoverColorRole != null && colors != null
//         ? colors.resolve(widget.hoverColorRole!)
//         : widget.colorRole != null
//             ? colors?.resolve(widget.colorRole!, InteractionState.hover)
//             : null;

//     final effectiveStyle = baseStyle.copyWith(
//       color: isHovered ? (hoverColor ?? baseColor) : baseColor,
//       fontWeight: isHovered ? (widget.hoverFontWeight ?? baseStyle.fontWeight) : baseStyle.fontWeight,
//     );

//     final textWidget = AnimatedDefaultTextStyle(
//       style: effectiveStyle,
//       duration: const Duration(milliseconds: 100),
//       child: Text(
//         widget.text,
//         textAlign: widget.textAlign,
//         maxLines: widget.maxLines,
//         overflow: widget.overflow,
//       ),
//     );

//     final gesture = widget.onTap != null
//         ? GestureDetector(onTap: widget.onTap, child: textWidget)
//         : textWidget;

//     return MouseRegion(
//       onEnter: (_) => _setHover(true),
//       onExit: (_) => _setHover(false),
//       cursor: widget.onTap != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
//       child: gesture,
//     );
//   }

//   void _setHover(bool value) {
//     if (mounted) {
//       setState(() {
//         isHovered = value;
//       });
//     }
//   }
// }
// */
