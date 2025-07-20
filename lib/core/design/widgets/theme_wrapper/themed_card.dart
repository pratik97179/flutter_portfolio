import 'package:flutter/material.dart';
import '../../design_system.dart';

class ThemedCard extends StatefulWidget {
  final Widget child;
  final ComponentToken token;
  final bool allowHover;

  const ThemedCard({
    required this.child,
    this.token = ComponentToken.card,
    this.allowHover = false,
    super.key,
  });

  @override
  State<ThemedCard> createState() => _ThemedCardState();
}

class _ThemedCardState extends State<ThemedCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final style = context.components.components.resolveCard(widget.token);
    final state = _hovering ? InteractionState.hover : InteractionState.base;

    final box = AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: style.padding,
      decoration: style.buildDecoration(context, state),
      child: widget.child,
    );

    return widget.allowHover
        ? MouseRegion(
            onEnter: (_) => setState(() => _hovering = true),
            onExit: (_) => setState(() => _hovering = false),
            child: box,
          )
        : box;
  }
}
