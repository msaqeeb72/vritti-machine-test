import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:machine_test/bloc/home_bloc.dart';
import 'package:machine_test/db/app_database.dart';
import 'package:machine_test/repo/home_repo.dart';
import 'package:machine_test/repo/home_repo_impl.dart';
import 'package:machine_test/service/client.dart';
import 'package:machine_test/service/sqlite_service.dart';

class HomeDependencyConfigurator extends DependencyConfigurator{
  @override
  void configure(GetIt serviceLocator) {
    serviceLocator.registerLazySingleton<HomeBloc>((){
      return HomeBloc(serviceLocator.get());
    });
    serviceLocator.registerLazySingleton<HomeRepo>(()=>HomeRepoImpl(
      homeClient: serviceLocator.get(),
      dbService: serviceLocator.get()
    ));
    serviceLocator.registerLazySingleton(()=>HomeClient(serviceLocator.get()));
    serviceLocator.registerLazySingleton<Future<SqliteService>>(()async=>SqliteService(await AppDatabase().openDb()));
  }

}
void initFeatureDependencies(){
  HomeDependencyConfigurator().configure(serviceLocator);
}