import '../../../data/data.dart';
import '../../../domain/domain.dart';
import '../repositories/repositories.dart';

SearchWeatherUseCase searchWeatherUseCaseFactory() {
  return SearchWeatherUseCaseImpl(
    repository: weatherRepositoryFactory(),
  );
}
