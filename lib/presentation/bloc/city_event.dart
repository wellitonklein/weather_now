part of 'city_bloc.dart';

abstract interface class CityEvent {
  const CityEvent();
}

/// Digitando o que será pesquisado
class SearchChanged extends CityEvent {
  final String value;

  const SearchChanged({
    required this.value,
  });
}

/// Apagar o nome da cidade
class SearchCleaned extends CityEvent {
  const SearchCleaned();
}

/// consultar a cidade
class SearchConsulted extends CityEvent {
  const SearchConsulted();
}
