import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import '../../main/main.dart';
import '../bloc/bloc.dart';

class WeatherDetailPage extends StatefulWidget {
  final CityEntity city;

  const WeatherDetailPage({
    super.key,
    required this.city,
  });

  @override
  State<WeatherDetailPage> createState() => _WeatherDetailPageState();
}

class _WeatherDetailPageState extends State<WeatherDetailPage> {
  late final WeatherCubit cubit;

  @override
  void initState() {
    cubit = weatherCubitFactory();
    cubit.initial(
      cityName: widget.city.name,
      stateName: widget.city.state,
      countryName: widget.city.country,
      latitude: widget.city.latitude,
      longitude: widget.city.longitude,
    );
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quinta do Sol - Paraná'),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: '32',
              style: textTheme.displayLarge,
              children: [
                TextSpan(
                  text: '°C',
                  style: textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Mais informações',
          child: const Icon(Icons.arrow_upward_outlined),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TemperatureDetailWidget(
                            title: 'Mínima',
                            value: 19,
                          ),
                          TemperatureDetailWidget(
                            title: 'Máxima',
                            value: 45,
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TemperatureDetailWidget(
                            title: 'Sesação',
                            value: 49,
                          ),
                          TemperatureDetailWidget(
                            title: 'Humidade',
                            value: 80,
                            type: '%',
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        bottomNavigationBar: const BottomAppBar(
          elevation: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TemperatureDetailWidget(
                title: 'Mínima',
                value: 19,
              ),
              TemperatureDetailWidget(
                title: 'Máxima',
                value: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TemperatureDetailWidget extends StatelessWidget {
  final String title;
  final double value;
  final String? type;

  const TemperatureDetailWidget({
    super.key,
    required this.title,
    required this.value,
    this.type = '°C',
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          title,
          style: textTheme.bodySmall,
        ),
        Text.rich(
          TextSpan(
            text: value.toStringAsFixed(0),
            children: [
              TextSpan(
                text: type,
                style: textTheme.bodySmall,
              ),
            ],
          ),
          style: textTheme.titleMedium,
        ),
      ],
    );
  }
}
