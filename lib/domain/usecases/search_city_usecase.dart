import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

typedef SearchCityOutput = Future<Either<CityFailure, List<CityEntity>>>;

abstract interface class SearchCityUseCase {
  SearchCityOutput call({required String input});
}
