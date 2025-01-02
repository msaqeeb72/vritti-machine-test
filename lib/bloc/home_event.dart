import 'package:equatable/equatable.dart';
import 'package:machine_test/model/user_model.dart';

sealed class HomeEvent extends Equatable{

}
class GetAllUserHomeEvent extends HomeEvent{
  final bool fromRemote;
  GetAllUserHomeEvent([this.fromRemote = false]);
  @override
  List<Object?> get props => [fromRemote];
}
class DeleteUserHomeEvent extends HomeEvent{
  final UserModel model;
  DeleteUserHomeEvent(this.model);
  @override
  List<Object?> get props => [model];
}
class UpdateUserHomeEvent extends HomeEvent{
  final UserModel model;
  UpdateUserHomeEvent(this.model);
  @override
  List<Object?> get props => [model];
}
