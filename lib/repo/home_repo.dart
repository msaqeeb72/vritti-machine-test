import 'package:machine_test/model/user_model.dart';

abstract class HomeRepo{
  Future<List<UserModel>> getAllUsersFromDb();
  Future<List<UserModel>> getAllUsersFromRemote();

  Future<UserModel?> updateUser(UserModel user);
  Future<UserModel?> insertUser(UserModel user);
  Future<bool> insertAllUsers(List<UserModel> users);

  Future<bool> deleteUser(UserModel user);
}