import 'package:finalproject/models/user.dart';
import 'package:flutter/material.dart';

class inputField extends StatelessWidget {

  final User user;
  final String label;
  final IconData iconData;
  final bool isPassword;

  const inputField({
    required this.user,
    required this.label,
    required this.iconData,
    required this.isPassword
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(40,0, 40, 15),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(0,248,248,1),
          
          labelText:label,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.black,
          //   )
          // ) ,
          prefixIcon: Icon(iconData,color: Color.fromRGBO(26, 165, 123, 1),),
        ),
        validator: (value){
          return value!.isEmpty?"Please enter "+label:null;
        },
        onSaved: (value){
          if(isPassword){
            user.password=value as String;
            return;
          }
          user.email=value as String;
        },
      ),
    );
  }
}