import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variables_test/app/app.dart';
import 'package:variables_test/core/constants/themes/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const App(),
    ),
  );
}
