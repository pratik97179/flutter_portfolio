import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/core/design/models/color/design_color_token.dart';

const lightDesignColors = DesignColors({
  ColorRole.textExtraLight: {
    InteractionState.base: Color(0xFFA3A3A3),
  },
  ColorRole.textLight: {
    InteractionState.base: Color(0xFF5C5C5D),
  },
  ColorRole.text: {
    InteractionState.base: Color(0xFF1F2937),
    InteractionState.hover: Color(0xFF111827),
    InteractionState.active: Color(0xFF6F737D),
  },
  ColorRole.textDark: {
    InteractionState.base: Color(0xFF171717),
  },
  ColorRole.name: {
    InteractionState.base: Color(0xFF17171A),
  },
  ColorRole.cta: {
    InteractionState.base: Color(0xFF000000),
    InteractionState.hover: Color(0xFF1F2937),
  },
  ColorRole.surfaceLight: {
    InteractionState.base: Color(0xFFFFFFFF),
  },
  ColorRole.surface: {
    InteractionState.base: Color(0xFFFAFAFA),
  },
  ColorRole.surfaceDark: {
    InteractionState.base: Color(0xFFF2F2F2),
  },
  ColorRole.border: {
    InteractionState.base: Color(0xFFDADADA),
  },
});

const darkDesignColors = DesignColors({
  ColorRole.textExtraLight: {
    InteractionState.base: Color(0xFF5C5C5D), // matches light mode's textLight
  },
  ColorRole.textLight: {
    InteractionState.base:
        Color(0xFFA3A3A3), // matches light mode's textExtraLight
  },
  ColorRole.text: {
    InteractionState.base: Color(0xFFE5E5E5), // light gray for main text
    InteractionState.hover: Color(0xFFF0F0F0), // slightly brighter on hover
    InteractionState.active: Color(0xFFB0B0B0), // dimmed gray when active
  },
  ColorRole.textDark: {
    InteractionState.base: Color(0xFFFAFAFA), // near white for dark emphasis
  },
  ColorRole.name: {
    InteractionState.base: Color(0xFFFFFFFF), // strong white for names/titles
  },
  ColorRole.cta: {
    InteractionState.base: Color(0xFFFFFFFF), // white CTA text
    InteractionState.hover: Color(0xFFE5E5E5), // hover: slightly muted white
  },
  ColorRole.surfaceLight: {
    InteractionState.base:
        Color(0xFF2A2A2A), // lightest dark surface (like card bg)
  },
  ColorRole.surface: {
    InteractionState.base: Color(0xFF1A1A1A), // main background surface
  },
  ColorRole.surfaceDark: {
    InteractionState.base: Color(0xFF121212), // very dark surface
  },
  ColorRole.border: {
    InteractionState.base: Color(0xFF3A3A3A),
  },
});
