import '../../../presentation/presentation.dart';
import '../usecases/usescases.dart';

CityBloc cityBlocFactory() {
  return CityBloc(
    searchCity: searchCityUseCaseFactory(),
  );
}
