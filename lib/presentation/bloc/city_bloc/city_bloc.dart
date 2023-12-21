import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'city_state.dart';
part 'city_event.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final SearchCityUseCase _searchCity;

  CityBloc({
    required SearchCityUseCase searchCity,
  })  : _searchCity = searchCity,
        super(CityState.initial()) {
    on<CityEvent>(_cityEventMap);
  }

  Future<void> _cityEventMap(CityEvent event, Emitter<CityState> emit) {
    return event.map(
      searchChanged: (e) async {
        emit(
          state.copyWith(
            searchField: e.value,
            isLoading: false,
            failureOrSuccess: none(),
          ),
        );
      },
      searchCleaned: (e) async {
        emit(CityState.initial());
      },
      searchConsulted: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            failureOrSuccess: none(),
          ),
        );

        final response = await _searchCity.call(input: state.searchField);

        final newState = response.fold(
          (failure) {
            final errorMessage = failure.map(
              notFound: (_) => 'Nenhuma cidade foi encontrada.',
              noCityReported: (_) => 'Favor informar uma cidade para consulta.',
              noInternetAccess: (_) => 'Sem acesso a internet.',
              unexpected: (_) => 'Ocorreu um erro. Entre em contato com o suporte.',
            );

            return state.copyWith(
              failureOrSuccess: some(left(errorMessage)),
            );
          },
          (cities) {
            final successMessage = 'Foram encontradas ${cities.length} cidades.';

            return state.copyWith(
              cities: cities,
              failureOrSuccess: some(right(successMessage)),
            );
          },
        );

        emit(newState.copyWith(isLoading: false));
      },
    );
  }
}
