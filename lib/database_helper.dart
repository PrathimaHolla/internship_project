import 'dart:io';
import 'package:finalproject/models/user.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseHelper{
  static final _dbName='loinDB.db';
  static final _dbVersion=1;
  static final _tableName='User';
  static final _columnUserName='userName';
  static final _columnEmail='email';
  static final _columnPAssword='password';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance=DatabaseHelper._privateConstructor();
  Database? _database;

  Future<Database?> get database async{
    if(_database!=null)
      return _database;
    _database=await _initiateDatabase();
    return _database;
  }

  _initiateDatabase () async{
    Directory directory=await getApplicationDocumentsDirectory();
    String path=join(directory.path,_dbName);

    return await openDatabase(
      path,
      version:_dbVersion,
      onCreate:_onCreate
    );
  }
  
  Future? _onCreate(Database db, int version){
    db.execute(
      '''
      CREATE TABLE $_tableName(
        $_columnUserName text not null,
        $_columnEmail text not null,
        $_columnPAssword text not null
      )
      '''
    );
  }
  Future insert(Map<String,dynamic> row) async{
    Database? db=await instance.database;
    await db?.insert(_tableName,row);
  }

  Future<List<User>> getAll() async{
    Database? db=await instance.database;
    List<Map<String, dynamic>> list= await db!.query(_tableName);
    List<User> res=[];
    list.forEach((element) {
      User user=User(userName: element['userName'],  email: element['email'], password: element['password']);
      res.add(user);
     });
     return res;
  }
}