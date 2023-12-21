import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../failures/failures.dart';

typedef SearchByNameOutput = Future<Either<CityFailure, List<CityEntity>>>;

abstract interface class CityRepository {
  SearchByNameOutput searchByName({required String search});
}
