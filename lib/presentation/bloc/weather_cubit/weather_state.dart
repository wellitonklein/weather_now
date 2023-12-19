part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.success({
    required WeatherEntity weather,
  }) = _Success;
  const factory WeatherState.failure({required String message}) = _Failure;

  const WeatherState._();
}
