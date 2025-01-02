import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {

  Future<Database> openDb()async{
    return openDatabase(
      join(await getDatabasesPath(), 'app_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users ( id INT PRIMARY KEY, email VARCHAR(255) NOT NULL, first_name VARCHAR(100), last_name VARCHAR(100), avatar VARCHAR(255) )',
        );
      },
      version: 1,
    );
  }
}
