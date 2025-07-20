import 'package:flutter/material.dart';
import 'package:portfolio_final/presentation/my_app.dart';
import 'package:portfolio_final/utils/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.init(enabled: true);
  runApp(AppLogger.wrapGestureLogging(const MyApp()));
}
