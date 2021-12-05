import 'package:finalproject/models/user.dart';
import 'package:scoped_model/scoped_model.dart';

class Auth extends Model{
  User userVerified=new User(
    userName: 'Prathima',
    email: 'prathima@gmail.com',
    password: 'prathima'
  );//one user prathima
  
  Future<bool> authUser(email,password) async{
    if(email==userVerified.email && password==userVerified.password)
    return true;
    return false;
  }
}