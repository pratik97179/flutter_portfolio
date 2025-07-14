// main.dart
import 'package:flutter/material.dart';
import 'package:portfolio_final/presentation/my_app.dart';
import 'package:portfolio_final/utils/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.init(enabled: false);
  runApp(const MyApp());
}
