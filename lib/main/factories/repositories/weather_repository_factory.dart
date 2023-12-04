import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../infra/infra.dart';

WeatherRepository weatherRepositoryFactory() {
  return WeatherRepositoryImpl(
    client: AppAdapter.client,
    baseUrl: AppConst.baseUrl,
    apiKey: AppConst.apiKey,
  );
}
