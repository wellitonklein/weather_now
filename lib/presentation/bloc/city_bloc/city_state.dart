part of 'city_bloc.dart';

abstract interface class CityState {
  const CityState();
}

class InitialCityState extends CityState {
  const InitialCityState();
}

class LoadingCityState extends CityState {
  const LoadingCityState();
}

class DataCityState extends CityState {
  final List<CityEntity> cities;

  const DataCityState({
    required this.cities,
  });
}

class ErrorCityState extends CityState {
  final String message;

  const ErrorCityState({
    required this.message,
  });
}
