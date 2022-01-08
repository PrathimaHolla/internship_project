import 'package:finalproject/models/user.dart';
import 'package:flutter/material.dart';

class inputField extends StatelessWidget {

  final User user;
  final String label;
  final IconData iconData;
  final int which;
  final bool hide;

  const inputField({
    required this.user,
    required this.label,
    required this.iconData,
    required this.which,
    required this.hide
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
        obscureText: hide,
        validator: (value){
          return value!.isEmpty?"Please enter "+label:null;
        },
        onSaved: (value){
          // if(isPassword){
          //   user.password=value as String;
          //   return;
          // }
          // user.email=value as String;
          if(which==0)
            user.userName=value as String;
          else if(which==1)
            user.email=value as String;
          else
            user.password=value as String;
            // print("which:"+(which.toString()));
          // print("In inputflied: \nvalue: "+value+"\n" +user.userName+" "+user.email+" "+user.password);
          return;
        },
      ),
    );
  }
}