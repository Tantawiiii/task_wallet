import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../../models/user_model.dart';

class DBService {
  static late Database _database;

  static Future<void> init() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'users.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT, amount INTEGER, lastTransactionDate TEXT)',
        );
      },
    );
  }

  static Future<void> populateDatabase() async {
    await _database.insert('users', {'username': 'User1', 'amount': 852, 'lastTransactionDate': '2024-05-16'});
    await _database.insert('users', {'username': 'User2', 'amount': 365, 'lastTransactionDate': '2024-05-15'});
    await _database.insert('users', {'username': 'User3', 'amount': 300, 'lastTransactionDate': '2024-05-14'});
  }

  static Future<List<User>> fetchUsers() async {
    final users = await _database.query('users');
    return users.map((user) => User.fromMap(user)).toList();
  }
}