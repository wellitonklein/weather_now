import '../../../presentation/presentation.dart';
import '../usecases/usescases.dart';

WeatherCubit weatherCubitFactory() {
  return WeatherCubit(
    searchWeather: searchWeatherUseCaseFactory(),
  );
}
