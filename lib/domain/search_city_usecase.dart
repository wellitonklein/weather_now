import 'city_entity.dart';

abstract interface class SearchCityUseCase {
  Future<List<CityEntity>> call({required String input});
}
