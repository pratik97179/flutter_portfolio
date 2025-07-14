import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 100,
    ),
  );

  static bool _enabled = true;

  static void init({required bool enabled}) {
    _enabled = enabled;
    _logger.i('Logger initialized: $_enabled');
  }

  static void log(String message, {String tag = 'LOG'}) {
    if (_enabled && kDebugMode) {
      _logger.i('[$tag] $message');
    }
  }

  static void error(String message, {String tag = 'ERROR'}) {
    if (_enabled) {
      _logger.e('[$tag] $message');
    }
  }

  static Widget wrapGestureLogging(Widget child) {
    if (!_enabled) {
      return child;
    }

    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (event) {
        final position = event.position;
        log('Gesture tap at position: $position', tag: 'GESTURE');
      },
      child: child,
    );
  }
}
