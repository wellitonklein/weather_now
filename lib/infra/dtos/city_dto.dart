import 'dart:convert';

import '../../domain/domain.dart';

extension CityDto on CityEntity {
  static List<CityEntity> fromJson(dynamic json) {
    final listMap = jsonDecode(json) as List;

    return listMap
        .map(
          (city) => CityEntity(
            name: city['name'],
            longitude: city['lon'],
            latitude: city['lat'],
            country: city['country'],
            state: city['state'],
          ),
        )
        .toList();
  }
}
