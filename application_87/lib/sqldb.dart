import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class sqlDb {
  static Database? _db; //يقبل قيمة ال null



  Future<Database?> get db async {


    if (_db == null) {

      _db = await intialDb();
      return _db;
    }
    
    
     else {

      
      return _db;
    }
  }

  intialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'mohamed.db');
    Database mydb = await openDatabase(path, onCreate: _onCreate);
    return mydb;
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE "notes"(
id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY ,
notes TEXT NOT NULL
)
''');
    await db.execute('''
CREATE TABLE "notes"(
id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY ,
notes TEXT NOT NULL
)
''');
    await db.execute('''
CREATE TABLE "notes"(
id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY ,
notes TEXT NOT NULL
)
''');
    print("Create DATABASE AND TABLE =======================");
  }
}
