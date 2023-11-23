import 'city_entity.dart';

abstract class CityRepository {
  Future<List<CityEntity>> searchByName({required String search});
}
