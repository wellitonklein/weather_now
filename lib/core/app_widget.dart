import 'package:flutter/material.dart';

import '../domain/domain.dart';
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
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
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
      initialRoute: '/splash',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/splash':
            return MaterialPageRoute(
              builder: (context) => const SplashPage(),
            );
          case '/':
            return MaterialPageRoute(
              builder: (context) => const SearchCityPage(),
            );
          case '/weather-detail':
            return MaterialPageRoute(
              builder: (context) => WeatherDetailPage(
                city: settings.arguments as CityEntity,
              ),
            );
          case '/failure':
            return MaterialPageRoute(
              builder: (context) => FailurePage(
                errorMessage: settings.arguments as String,
              ),
            );
          default:
            return null;
        }
      },
    );
  }
}
