import '../entities/entities.dart';

abstract interface class SearchCityUseCase {
  Future<List<CityEntity>> call({required String input});
}
