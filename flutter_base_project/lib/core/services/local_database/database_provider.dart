import 'dart:io';
import 'package:flutter_base_project/core/services/local_database/database_utils.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

/// singleton class for handle the database operation
class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  /// initialize the database
  Future<Database> initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.toString(), 'demo.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // table creation queries will place here
          await db.execute(ProductsTableUtils.tableCreationQuery);
          await db.execute(DraftOrdersTableUtils.tableCreationQuery);
          await db.execute(OrderTableUtils.tableCreationQuery);
        }, onUpgrade: (Database db, int oldVersion, int newVersion) async {});
    return database;
  }
}
