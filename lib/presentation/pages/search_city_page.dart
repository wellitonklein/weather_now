import 'package:flutter/material.dart';

class SearchCityPage extends StatefulWidget {
  const SearchCityPage({super.key});

  @override
  State<SearchCityPage> createState() => _SearchCityPageState();
}

class _SearchCityPageState extends State<SearchCityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Weather Now',
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                hintText: 'Consulta uma cidade aqui',
                suffixIcon: IconButton(
                  tooltip: 'Consultar',
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(onPressed: () {}, child: const Text('Consultar'))
          ],
        ),
      ),
    );
  }
}
