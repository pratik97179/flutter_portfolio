import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';

class DesignColors {
  final Map<ColorRole, Map<InteractionState, Color>> roleMap;

  const DesignColors(this.roleMap);

  Color resolve(ColorRole role, [InteractionState state = InteractionState.base]) {
    return roleMap[role]?[state] ?? Colors.transparent;
  }
}
