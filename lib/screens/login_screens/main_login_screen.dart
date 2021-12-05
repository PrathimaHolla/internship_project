import 'package:finalproject/screens/login_screens/login_form.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
                height: MediaQuery.of(context).size.height*.37,
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    color: Color.fromRGBO(254,254,254,1),
                  ),
                  
                  child: loginForm()
                ),
              ),
              
              // loginForm(),
            ],
          ),
        ),
      ),
    );
  }
}