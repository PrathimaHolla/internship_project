// @dart=2.9
import 'package:finalproject/screens/home_screen.dart';
import 'package:finalproject/screens/login_screens/main_login_screen.dart';
import 'package:finalproject/screens/splash_screen.dart';
import 'package:finalproject/services/auth_service.dart';
import 'package:finalproject/services/menu_list.dart';
import 'package:finalproject/services/popular_list.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Auth auth=Auth();
  final PopularList popular=PopularList();
  final MenuList menu=MenuList();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<Auth>(
      model: auth,
      child: ScopedModel<PopularList>(
        model: popular,
        child:ScopedModel<MenuList>(
          model: menu,
          child:MaterialApp(   
            // home:homeScreen(),   
            initialRoute: '/',
            routes: {
              '/':(context)=>splashScreen(),
              '/login':(context)=>loginScreen(),
              '/home':(context)=>homeScreen(),
            },
          )
        ),
      ),
    ); 
  }
}