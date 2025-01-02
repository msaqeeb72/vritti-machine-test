import 'package:get_it/get_it.dart';

abstract class DependencyConfigurator{
  void configure(GetIt serviceLocator);
}