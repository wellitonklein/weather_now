import 'package:flutter/material.dart';

import '../presentation/presentation.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Now',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.dark,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          // fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              const Size(double.infinity, 50),
            ),
          ),
        ),
      ),
      home: const SearchCityPage(),
    );
  }
}
