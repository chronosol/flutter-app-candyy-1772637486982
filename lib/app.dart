import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/candy_crush/presentation/screens/candy_crush_screen.dart';
import 'core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Candy Crush Clone',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const CandyCrushScreen(),
      ),
    );
  }
}
