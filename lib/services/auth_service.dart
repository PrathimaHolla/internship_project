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
  // Set<User>uv=new HashSet();
  // User user1=new User(
  //   email: 'prathima@gmail.com',
  //   password: 'prathima'

  // );//one user prathima
  // User user2=new User(
  //   email: 'pallavi@gmail.com',
  //   password: 'pallavi'

  // );//User pallavi
  
  // Future<bool> authUser(currUser) async{
  //   uv.add(user1);
  //   uv.add(user2);
  //   for(User u in uv)
  //   {
  //     if(u.email==currUser.email && u.password==currUser.password)
  //       return true;
  //   }
    
  //   return false;
  // }
  // Future<void> authSignUp(currUser)async{
  //   uv.add(currUser);
  // }

// }