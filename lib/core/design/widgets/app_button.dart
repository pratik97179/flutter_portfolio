import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    required this.label,
    required this.onPressed,
    super.key,
    this.type = ButtonType.text,
    this.token = ComponentToken.button,
    this.icon,
    this.allowHover = true,
    this.duration = const Duration(milliseconds: 100),
  });

  final String label;
  final VoidCallback onPressed;
  final ButtonType type;
  final ComponentToken token;
  final Widget? icon;
  final bool allowHover;
  final Duration duration;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _hovered = false;
  bool _pressed = false;

  InteractionState get _interactionState {
    if (_pressed) {
      return InteractionState.active;
    }
    if (_hovered) {
      return InteractionState.hover;
    }
    return InteractionState.base;
  }

  void _setHovered(bool value) {
    if (!widget.allowHover) {
      return;
    }
    setState(() => _hovered = value);
  }

  void _setPressed(bool value) {
    setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    final style = context.components.components
        .resolveButton(widget.type)
        .resolve(context, _interactionState);

    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onExit: (_) => _setHovered(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: (_) => _setPressed(true),
        onTapUp: (_) => _setPressed(false),
        onTapCancel: () => _setPressed(false),
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: widget.duration,
          padding: style.padding,
          decoration: BoxDecoration(
            color: style.backgroundColor,
            borderRadius: BorderRadius.circular(style.radius),
            boxShadow: style.shadow,
            border: style.border,
          ),
          child: DefaultTextStyle(
            style: style.textStyle,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.icon != null) ...[
                  widget.icon!,
                  const SizedBox(width: 8),
                ],
                Text(widget.label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
