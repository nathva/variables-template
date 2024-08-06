import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variables_test/color_mode_switch/view/color_mode_switch_page.dart';
import 'package:variables_test/core/constants/themes/app_theme.dart';
import 'package:variables_test/core/constants/themes/theme_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          theme: ThemeData.light(), // Tema claro por defecto
          darkTheme: ThemeData.dark(), // Tema oscuro por defecto
          themeMode: themeProvider.themeMode, // Modo de tema actual
          builder: (context, child) {
            final theme = AppTheme.theme(context);
            return Theme(
              data: theme,
              child: child!,
            );
          },
          home: const ColorModeSwitchPage(),
        );
      },
    );
  }
}
