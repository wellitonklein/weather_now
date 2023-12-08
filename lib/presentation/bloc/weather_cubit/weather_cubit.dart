import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/domain.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final SearchWeatherUseCase searchWeather;

  late WeatherEntity weather;

  WeatherCubit({
    required this.searchWeather,
  }) : super(const WeatherLoading());

  Future<void> initial({
    required String cityName,
    required String stateName,
    required String countryName,
    required double latitude,
    required double longitude,
  }) async {
    emit(const WeatherLoading());

    try {
      final response = await searchWeather(
        city: cityName,
        state: stateName,
        country: countryName,
        latitude: latitude,
        longitude: longitude,
      );

      weather = response;

      emit(WeatherSuccess(weather: response));
    } catch (e) {
      emit(WeatherFailure(message: e.toString()));
    }
  }

  Future<void> refreshData() async {
    await initial(
      cityName: weather.city!.name,
      stateName: weather.city!.state,
      countryName: weather.city!.country,
      latitude: weather.city!.latitude,
      longitude: weather.city!.longitude,
    );
  }

  Future<void> screenshotShare() async {}
}
