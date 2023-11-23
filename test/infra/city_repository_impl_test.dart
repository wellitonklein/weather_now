import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'package:weather_now/domain/domain.dart';
import 'package:weather_now/infra/infra.dart';

class HttpMock with Mock implements http.Client {}

void main() {
  late final CityRepository sut;
  late final http.Client client;
  late final String url;
  late final String search;
  late final String apiKey;
  late final String jsonResponse;
  late final String jsonFailureResponse;

  setUpAll(() {
    apiKey = 'ANY_KEY';
    search = 'ANY_SEARCH';
    url =
        'https://api.openweathermap.org/geo/1.0/direct?q=$search&limit=5&lang=pt_br&APPID=$apiKey';
    client = HttpMock();
    sut = CityRepositoryImpl(client: client);

    jsonFailureResponse = jsonEncode([]);

    jsonResponse = jsonEncode(
      [
        {
          "name": "Maringá",
          "lat": -23.425269,
          "lon": -51.9382078,
          "country": "BR",
          "state": "Paraná"
        },
        {
          "name": "Maringá",
          "lat": -23.2275113,
          "lon": -46.8797287,
          "country": "BR",
          "state": "São Paulo"
        },
        {
          "name": "Maringá",
          "lat": -19.7609894,
          "lon": -47.8840903,
          "country": "BR",
          "state": "Minas Gerais"
        }
      ],
    );

    registerFallbackValue(Uri.parse(url));
  });

  test('deve consultar a api e trazer uma lista de cidades', () async {
    //
    when(
      () => client.get(any()),
    ).thenAnswer(
      (_) async => http.Response(jsonResponse, 200),
    );
    //
    final cities = await sut.searchByName(search: search);
    //
    expect(cities.isNotEmpty, isTrue);
  });

  test('não deve consultar a api se nenhuma cidade for informada', () async {
    expect(
      () => sut.searchByName(search: ''),
      throwsA(isException),
    );
  });

  test('deve retornar uma falha caso não encontre nenhuma cidade', () async {
    //
    when(
      () => client.get(any()),
    ).thenAnswer(
      (_) async => http.Response(jsonFailureResponse, 200),
    );
    //
    expect(
      () => sut.searchByName(search: search),
      throwsA(isException),
    );
  });
}
