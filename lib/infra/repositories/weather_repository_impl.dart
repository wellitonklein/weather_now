import 'package:fpdart/fpdart.dart';
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
  SearchByLocationOutput searchByLocation({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final url = '$baseUrl/data/2.5/weather?lat=$latitude&lon=$longitude&APPID=$apiKey&units=metric&lang=pt_br';
      final response = await client.get(Uri.parse(url));
      return right(WeatherDto.fromJson(response.body));
    } catch (_) {
      return left(const WeatherFailure.unexpected());
    }
  }
}
