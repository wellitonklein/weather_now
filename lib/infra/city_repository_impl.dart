import 'package:http/http.dart' as http;

import '../domain/domain.dart';
import 'city_dto.dart';

class CityRepositoryImpl implements CityRepository {
  final http.Client client;

  const CityRepositoryImpl({
    required this.client,
  });

  @override
  Future<List<CityEntity>> searchByName({required String search}) async {
    if (search.isEmpty) {
      throw Exception('Nenhuma cidade informada na pesquisa');
    }

    const apiKey = 'c93ec169bc7918636f32dc40e73d73d8';
    final url =
        'https://api.openweathermap.org/geo/1.0/direct?q=$search&limit=5&lang=pt_br&APPID=$apiKey';
    final response = await client.get(Uri.parse(url));

    final cities = CityDto.fromJson(response.body);

    if (cities.isEmpty) {
      throw Exception('Nenhuma cidade foi encontrada');
    }

    return cities;
  }
}
