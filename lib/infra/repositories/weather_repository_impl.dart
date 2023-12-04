import 'package:http/http.dart' as http;

import '../../domain/domain.dart';
import '../dtos/dtos.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final http.Client client;
  final String baseUrl;
  final String apiKey;

  const WeatherRepositoryImpl({
    required this.client,
    required this.baseUrl,
    required this.apiKey,
  });

  @override
  Future<WeatherEntity> searchByLocation({
    required double latitude,
    required double longitude,
  }) async {
    final url =
        '$baseUrl/data/2.5/weather?lat=$latitude&lon=$longitude&APPID=$apiKey&units=metric&lang=pt_br';
    final response = await client.get(Uri.parse(url));
    return WeatherDto.fromJson(response.body);
  }
}
