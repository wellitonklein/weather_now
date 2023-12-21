import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

typedef SearchByLocationOutput = Future<Either<WeatherFailure, WeatherEntity>>;

abstract interface class WeatherRepository {
  SearchByLocationOutput searchByLocation({
    required double latitude,
    required double longitude,
  });
}
