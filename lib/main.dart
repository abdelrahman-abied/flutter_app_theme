import 'package:flutter/material.dart';
import 'package:flutter_app_theme/my_home_page.dart';
import 'package:flutter_app_theme/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ref.watch(themeProvider),
        home: const MyHomePage(title: 'Flutter Theme Demo'),
      );
    });
  }
}
