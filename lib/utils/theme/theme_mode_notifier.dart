import 'package:flutter/material.dart';

class ThemeModeNotifier extends ValueNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.system);

  void toggle() {
    if (value == ThemeMode.light) {
      value = ThemeMode.dark;
    } else {
      value = ThemeMode.light;
    }
  }

  void set(ThemeMode mode) => value = mode;
}