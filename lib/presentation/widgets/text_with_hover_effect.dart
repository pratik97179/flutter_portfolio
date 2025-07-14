import 'package:flutter/material.dart';

class TextWithHoverEffect extends StatefulWidget {
  const TextWithHoverEffect(
    this.text, {
    super.key,
    this.style,
    this.hoverColor,
    this.hoverFontWeight,
  });

  final String? text;
  final TextStyle? style;
  final Color? hoverColor;
  final FontWeight? hoverFontWeight;

  @override
  State<TextWithHoverEffect> createState() => _TextWithHoverEffectState();
}

class _TextWithHoverEffectState extends State<TextWithHoverEffect> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: Text(
          widget.text ?? '',
          style: widget.style?.copyWith(
            color: isHovered ? widget.hoverColor : widget.style?.color,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.style?.fontWeight,
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
    this.isHovered = isHovered;
  });
}
