import 'package:finalproject/models/user.dart';
import 'package:finalproject/screens/login_screens/input_field.dart';
import 'package:finalproject/services/auth_service.dart';
import 'package:flutter/material.dart';
class signInScreen extends StatefulWidget {
  // const signInScreen({ Key? key }) : super(key: key);

  @override
  _signInScreenState createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  final _formKey=GlobalKey<FormState>();
  User user=new User();
  Auth auth=new Auth();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.35,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/images/login_bg.png"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Container(
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: Image.asset("lib/assets/images/flower_logo.png"),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "FloraGoGo",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Positioned(//to make it overlap
                top: MediaQuery.of(context).size.height*.32,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*.7,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    color: Color.fromRGBO(254,254,254,1),
                  ),
                  
                  child: Form(
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
                                    "Create an account "
                                  ),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 165, 123, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
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
                          isPassword: false
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
                          isPassword: true
                        ),
                        
                        ElevatedButton(
                          onPressed: () async{
                            if(_formKey.currentState!.validate()){
                              _formKey.currentState!.save();
                              // print('${user.email},${user.password}');
                              await auth.authSignUp(user);
                              Navigator.pushReplacementNamed(context, '/login');
                            }
                          }, 
                          child: Text(
                            "Sign Up",
                            style:TextStyle(
                              fontSize: 18,
                            )
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(26, 165, 123, 1)
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                          ),
                        ),
                        
                      ],
                    ),
                  )
                ),
              ),  
            ],
          ),
        ),
      ),
    );
  }
}