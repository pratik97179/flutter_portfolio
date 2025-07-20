import 'package:flutter/material.dart';
import '../../design_system.dart';

class BaseThemedBox extends StatelessWidget {
  final Widget child;
  final ColorRole backgroundRole;
  final double radius;
  final EdgeInsets padding;

  const BaseThemedBox({
    required this.child,
    required this.backgroundRole,
    this.radius = 12,
    this.padding = const EdgeInsets.all(16),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bg = context.palette.designColors.resolve(backgroundRole);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: padding,
      child: child,
    );
  }
}
