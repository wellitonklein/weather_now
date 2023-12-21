import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';

class CityNameWidget extends StatelessWidget {
  const CityNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => const LinearProgressIndicator(),
          success: (success) => Tooltip(
            message: success.weather.city.addressFull,
            child: Text(success.weather.city.addressFull),
          ),
          failure: (failure) => Text(failure.message),
        );
      },
    );
  }
}
