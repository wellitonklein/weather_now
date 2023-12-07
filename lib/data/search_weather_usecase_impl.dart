import '../domain/domain.dart';

class SearchWeatherUseCaseImpl implements SearchWeatherUseCase {
  final WeatherRepository repository;

  const SearchWeatherUseCaseImpl({
    required this.repository,
  });

  @override
  Future<WeatherEntity> call({
    required String city,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
  }) async {
    if (latitude == 0 || longitude == 0) {
      throw Exception('Nenhuma localização informada.');
    }

    if (city.isEmpty) {
      throw Exception('Nenhuma cidade válida informada.');
    }

    final weather = await repository.searchByLocation(
      latitude: latitude,
      longitude: longitude,
    );

    final currentCity = CityEntity(
      name: city,
      longitude: longitude,
      latitude: latitude,
      country: country,
      state: state,
    );

    final weatherAndCity = weather.copyWith(
      city: currentCity,
    );

    return weatherAndCity;
  }
}
