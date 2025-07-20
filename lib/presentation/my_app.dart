import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/themes/theme_config.dart';
import 'package:portfolio_final/presentation/pages/home/home_page.dart';
import 'package:portfolio_final/utils/theme/theme_mode_notifier.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return ChangeNotifierProvider<ThemeModeNotifier>(
          create: (_) => ThemeModeNotifier(),
          child: Consumer<ThemeModeNotifier>(
            builder: (context, themeNotifier, _) {
              final brightness = MediaQuery.of(context).platformBrightness;
              final themeMode = themeNotifier.themeMode;

              final isDark = themeMode == ThemeMode.system
                  ? brightness == Brightness.dark
                  : themeMode == ThemeMode.dark;

              return AnimatedTheme(
                data: isDark ? darkTheme : lightTheme,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  themeMode: themeMode,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  home: const HomePage(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
