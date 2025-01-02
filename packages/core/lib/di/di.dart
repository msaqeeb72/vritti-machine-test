export 'dependency_configurator.dart';
import 'package:get_it/get_it.dart';
import '../location/location_manager.dart';
import '../network/dio_client.dart';

final serviceLocator = GetIt.instance;
void initCoreDependencies(){
    serviceLocator.registerLazySingleton<DioClient>((){
      return DioClient();
    });
}
