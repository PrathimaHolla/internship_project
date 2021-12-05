import 'dart:ui';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void nextScreen(){
    // print("Entered nextscreen!!\n");
    Future.delayed(Duration(seconds: 2),(){
      // print("Delay Executed");
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
    // print("Entered init!");
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(//avoid all other instructions by OS 
      child: Material(
        child: Stack(
          // color: Colors.amberAccent,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/splash_bg.png" ),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    // alignment: Alignment.center,
                    child: Image.asset("lib/assets/images/flower_logo.png"),
                  ),
                  Container(
                    child: Text(
                      "FloraGoGo",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              )
            )
          ],
          
        ),
      ),
    );
  }
}
