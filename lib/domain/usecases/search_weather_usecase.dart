import 'package:fpdart/fpdart.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

typedef SearchWeatherOutput = Future<Either<WeatherFailure, WeatherEntity>>;

abstract interface class SearchWeatherUseCase {
  SearchWeatherOutput call({
    required String city,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
  });
}
