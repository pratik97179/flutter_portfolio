import 'package:flutter/material.dart';

enum BorderToken { none, thin, medium, thick }

extension BorderTokenExtension on BorderToken {
  Border get value {
    switch (this) {
      case BorderToken.none:
        return Border.all(width: 0, color: Colors.transparent);
      case BorderToken.thin:
        return Border.all(color: Colors.grey);
      case BorderToken.medium:
        return Border.all(width: 2, color: Colors.grey);
      case BorderToken.thick:
        return Border.all(width: 3);
    }
  }
}
