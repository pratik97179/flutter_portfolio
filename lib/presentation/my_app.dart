import 'package:flutter/material.dart';
import 'package:portfolio_final/main_dev.dart';
import 'package:portfolio_final/presentation/pages/home/home_page.dart';
import 'package:portfolio_final/utils/theme/theme_config.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: themeModeNotifier,
          builder: (_, mode, __) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Portfolio',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: mode,
            home: const SafeArea(
              child: Scaffold(
                body: HomePage(),
              ),
            ),
          ),
        );
      },
    );
  }
}
