import 'package:equatable/equatable.dart';
import 'package:machine_test/model/user_model.dart';

sealed class HomeState extends Equatable{

}

class InitHomeState extends HomeState{
  @override
  List<Object?> get props => [];
}

class UpdateAllUsersHomeState extends HomeState{
  final List<UserModel> user;
  UpdateAllUsersHomeState(this.user);
  @override
  List<Object?> get props => [user];
}