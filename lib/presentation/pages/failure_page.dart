import 'package:flutter/material.dart';

class FailurePage extends StatelessWidget {
  final String errorMessage;

  const FailurePage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      body: Center(
        child: Text(
          errorMessage,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
