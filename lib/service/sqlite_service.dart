import 'package:sqflite/sqflite.dart';

import '../model/user_model.dart';

class SqliteService{
  static const tableName = "users";
  final Database database;
  SqliteService(this.database);

  Future<void> insertUser(UserModel user) async {
    await database.insert(
      tableName,
      user.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertUsers(List<UserModel> users) async {

    Batch batch = database.batch();

    for (var user in users) {
      batch.insert(
        tableName,
        user.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    await batch.commit();
  }

  Future<void> updateUser(UserModel user) async {
    await database.update(
      tableName,
      user.toJson(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<void> deleteUser(int id) async {
    await database.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<UserModel>> getUsers() async {
    final List<Map<String, dynamic>> maps = await database.query(tableName);

    return List.generate(maps.length, (i) {
      return UserModel.fromJson(maps[i]);
    });
  }

}