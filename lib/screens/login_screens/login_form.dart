import 'package:finalproject/database_helper.dart';
import 'package:finalproject/models/user.dart';
import 'package:finalproject/screens/login_screens/input_field.dart';
import 'package:finalproject/services/auth_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class loginForm extends StatefulWidget {

  @override
  _loginFormState createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  final _formKey=GlobalKey<FormState>();
  User user=new User();
  Auth auth=new Auth();

  @override
  Widget build(BuildContext context) {
    return Form(
     key: _formKey, 
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           padding: EdgeInsets.fromLTRB(0, 25, 0, 15),
           child: RichText(//for having two colors in a text
            text: TextSpan(
              children: [
                TextSpan(
                  text: (
                    
                    "Log in "
                  ),
                  style: TextStyle(
                    color: Color.fromRGBO(26, 165, 123, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  )
                ),
                TextSpan(
                  
                  text: ("to your account"),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    
                    fontWeight: FontWeight.w500,
                  )
                ),
                
              ]
            )
        ),
         ),
         
         Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(40, 10, 0, 5),
          child: Text(
            "Email Address",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17, 
            ),
          ),
         ),

        //inputflied class required
        inputField(
          user: user, 
          label: "Email", 
          iconData: Icons.email,
          which: 1,
          hide: false,
        ),

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(40, 10, 0, 5),
          child: Text(
            "Password",
            style: TextStyle(
              
              color: Colors.black,
              fontSize: 17, 
            ),
          ),
         ),
         inputField(
          user: user, 
          label: "Password", 
          iconData: Icons.lock, 
          which: 2,
          hide: true,
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(0, 10, 40, 20),
          child:RichText(
            text: TextSpan(
              text:"Forgot Password?",
              style: TextStyle(
                color: Color.fromRGBO(26, 165, 123, 1),
                fontSize: 15, 
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap=(){
                //forgot password screen
              }
            ))
        ),
        
        ElevatedButton(
  
          onPressed: () async{
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              // print('${user.email},${user.password}');
              bool response=await auth.authUser(user);
              if(response)
                Navigator.pushReplacementNamed(context, '/home');
              else
                print("Login unsuccessful!!!");
              
            }
          },

          child: Text(
            "Login",
            style:TextStyle(
              fontSize: 18,
            )
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromRGBO(26, 165, 123, 1)
            ),
            fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
          ),
        ),
        Container(
           padding: EdgeInsets.fromLTRB(0, 25, 0, 20),
           child: RichText(//for having two colors in a text
            text: TextSpan(
              children: [
                TextSpan(
                  text: (
                    "Don't have account? "
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    // fontWeight: FontWeight.w600,
                  )
                ),
                TextSpan(
                  text: ("Sign Up"),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    //sign in page
                    Navigator.pushReplacementNamed(context,'/signin');
                  },
                  style: TextStyle(
                    color: Color.fromRGBO(26, 165, 123, 1),
                    fontSize: 15,
                    // fontWeight: FontWeight.w500,
                  )
                ),
              ]
            )
        ),
         ),
       ],
     ),
    );
  }
}
//if failed to run: flutter run --no-sound-null-safety
//if continues : dart pub get