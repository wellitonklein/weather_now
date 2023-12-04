import '../../data/data.dart';
import '../../domain/domain.dart';
import 'repositories/repositories.dart';

SearchCityUseCase searchCityUseCaseFactory() {
  return SearchCityUseCaseImpl(
    repository: cityRepositoryFactory(),
  );
}
