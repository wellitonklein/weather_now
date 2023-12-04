import 'package:http/http.dart' as http;

import '../../domain/domain.dart';
import '../dtos/dtos.dart';

class CityRepositoryImpl implements CityRepository {
  final http.Client client;
  final String baseUrl;
  final String apiKey;

  const CityRepositoryImpl({
    required this.client,
    required this.baseUrl,
    required this.apiKey,
  });

  @override
  Future<List<CityEntity>> searchByName({required String search}) async {
    final url =
        '$baseUrl/geo/1.0/direct?q=$search&limit=5&lang=pt_br&APPID=$apiKey';
    final response = await client.get(Uri.parse(url));
    return CityDto.fromJson(response.body);
  }
}
