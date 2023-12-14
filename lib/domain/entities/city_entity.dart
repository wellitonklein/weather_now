// ignore_for_file: public_member_api_docs, sort_constructors_first
class CityEntity {
  final String name;
  final double latitude;
  final double longitude;
  final String country;
  final String state;

  const CityEntity({
    required this.name,
    required this.longitude,
    required this.latitude,
    required this.country,
    required this.state,
  });

  String get addressFull => '$name, $state - $country';
}
