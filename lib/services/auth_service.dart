import 'dart:async';
import 'dart:async';
import 'dart:collection';

import 'package:finalproject/database_helper.dart';
import 'package:finalproject/models/user.dart';
import 'package:scoped_model/scoped_model.dart';

class Auth extends Model{
  Future? addUser(user){
    DatabaseHelper.instance.insert(user.toMap());
  }
  Future<bool> authUser(currUser) async{
    List<User> queryRows=await DatabaseHelper.instance.getAll();
    for(var u in queryRows)
    {
      print("currUser:");
      print(currUser);
      print("u:");print(u);
      if(u.email==currUser.email && u.password==currUser.password)
        return true;
    }
    
    return false;
  }

}
  