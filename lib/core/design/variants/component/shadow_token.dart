import 'package:flutter/material.dart';

enum ShadowToken { none, sm, md, lg }

extension ShadowTokenExtension on ShadowToken {
  List<BoxShadow> get value {
    switch (this) {
      case ShadowToken.none:
        return [];
      case ShadowToken.sm:
        return [
          const BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ];
      case ShadowToken.md:
        return [
          const BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ];
      case ShadowToken.lg:
        return [
          const BoxShadow(
            color: Colors.black38,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ];
    }
  }
}
