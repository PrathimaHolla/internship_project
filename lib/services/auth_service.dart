import 'dart:collection';

import 'package:finalproject/models/user.dart';
import 'package:scoped_model/scoped_model.dart';

class Auth extends Model{
  Set<User>uv=new HashSet();
  User user1=new User(
    email: 'prathima@gmail.com',
    password: 'prathima'

  );//one user prathima
  User user2=new User(
    email: 'pallavi@gmail.com',
    password: 'pallavi'

  );//User pallavi
  
  Future<bool> authUser(currUser) async{
    uv.add(user1);
    uv.add(user2);
    for(User u in uv)
    {
      if(u.email==currUser.email && u.password==currUser.password)
        return true;
    }
    // if(uv.contains(user1))
    // if(user1.email==userVerified.email && user1.password==userVerified.password)
    // return true;
    return false;
  }


}