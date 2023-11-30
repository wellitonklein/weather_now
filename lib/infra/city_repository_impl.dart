import 'package:http/http.dart' as http;

import '../domain/domain.dart';
import 'city_dto.dart';

class CityRepositoryImpl implements CityRepository {
  final http.Client client;
  final String apiKey;

  const CityRepositoryImpl({
    required this.client,
    required this.apiKey,
  });

  @override
  Future<List<CityEntity>> searchByName({required String search}) async {
    final url =
        'https://api.openweathermap.org/geo/1.0/direct?q=$search&limit=5&lang=pt_br&APPID=$apiKey';
    final response = await client.get(Uri.parse(url));
    return CityDto.fromJson(response.body);
  }
}
