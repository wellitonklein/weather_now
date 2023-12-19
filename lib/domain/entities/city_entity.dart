import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';

@freezed
class CityEntity with _$CityEntity {
  const factory CityEntity({
    required String name,
    required double latitude,
    required double longitude,
    required String country,
    required String state,
  }) = _CityEntity;

  factory CityEntity.empty() {
    return const CityEntity(
      name: '',
      latitude: 0,
      longitude: 0,
      country: '',
      state: '',
    );
  }

  String get addressFull => '$name, $state - $country';

  const CityEntity._();
}
