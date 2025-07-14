// main_profile.dart
import 'package:flutter/material.dart';
import 'package:portfolio_final/presentation/my_app.dart';
import 'package:portfolio_final/utils/logger.dart';

void main() {
  AppLogger.init(enabled: false);
  runApp(const MyApp());
}
