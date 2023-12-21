part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.searchChanged({
    required String value,
  }) = _SearchChanged;

  const factory CityEvent.searchCleaned() = _SearchCleaned;

  const factory CityEvent.searchConsulted() = _SearchConsulted;

  const CityEvent._();
}
