import 'package:machine_test/model/user_model.dart';
import 'package:machine_test/service/client.dart';
import 'package:machine_test/service/sqlite_service.dart';

import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  HomeClient homeClient;
  Future<SqliteService> dbService;
  HomeRepoImpl({required this.homeClient,required this.dbService});

  @override
  Future<bool> deleteUser(UserModel user) async{
    try{
      (await dbService).deleteUser(user.id!);
      return Future.value(true);
    }on Exception catch(e){
      return Future.value(false);
    }
  }

  @override
  Future<List<UserModel>> getAllUsersFromDb() async{
    return (await dbService).getUsers();
  }

  @override
  Future<List<UserModel>> getAllUsersFromRemote() async{
    final response = await homeClient.getUserList();
    return response.data??[];
  }

  @override
  Future<UserModel?> updateUser(UserModel user) async{
    try{
      (await dbService).updateUser(user);
      return Future.value(user);
    }on Exception catch(e){
      return Future.value(null);
    }
  }

  @override
  Future<bool> insertAllUsers(List<UserModel> users) async{
    try{
      (await dbService).insertUsers(users);
      return Future.value(true);
    }on Exception catch(e){
      return Future.value(false);
    }
  }

  @override
  Future<UserModel?> insertUser(UserModel user) async{
    try{
      (await dbService).insertUser(user);
      return Future.value(user);
    }on Exception catch(e){
      return Future.value(null);
    }
  }
}