import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../infra/infra.dart';

CityRepository cityRepositoryFactory() {
  return CityRepositoryImpl(
    client: AppAdapter.client,
    baseUrl: AppConst.baseUrl,
    apiKey: AppConst.apiKey,
  );
}
