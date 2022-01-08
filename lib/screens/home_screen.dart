import 'package:finalproject/screens/cards/popular_card.dart';
import 'package:finalproject/services/popular_list.dart';
import 'package:finalproject/services/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({ Key? key }) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: ScopedModelDescendant<MenuList>(
          builder: (context,child,menuList){
            return Container(
              child:ScopedModelDescendant<PopularList>(
                builder: (context,child,popularList){
                  return Container(
                    child: Scaffold(
                      backgroundColor:Color.fromRGBO(26, 165, 123, 1),
                      appBar: AppBar(
                        toolbarHeight: 75,
                        elevation: 0,
                        leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: (){Navigator.pushReplacementNamed(context, '/login');},),
                        title: Text(
                          "FloraGoGo",
                          style: TextStyle(color:Colors.white,fontSize: 20),
                        ),
                        centerTitle: true,
                        backgroundColor:  Color.fromRGBO(26, 165, 123, 1),
                        actions: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                        ],
                      ),
                      body: Center(
                        child:Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                            color: Colors.white
                          ),
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                height: MediaQuery.of(context).size.height*0.25,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                  
                                    image: AssetImage("lib/assets/images/ic_sale_banner.png"
                                    ),

                                    fit:BoxFit.fill
                                  )
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                
                                children: [
                                  Container(
                                      width: 50,
                                      height:50,
                                      child:Image.asset("lib/assets/images/flower_yellow.png")),
                                    Container(
                                      width: 50,
                                      height:50,
                                      child:Image.asset("lib/assets/images/flower_red.png")),
                                    Container(
                                      width: 50,
                                      height:50,
                                      child:Image.asset("lib/assets/images/gift.png")),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.fromLTRB(24, 10,24,10),
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "Popular Items",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 188,
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "View all",
                                            style: TextStyle(
                                              color:Color.fromRGBO(26, 165, 123, 1),
                                              fontSize: 15, 
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:500,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: popularList.popular.length,
                                      itemBuilder: (context,index){
                                        return PopularCard(popular: popularList.popular[index]);
                                      }),
                                  )
                                ],
                              ),
                              Container(
                                height:MediaQuery.of(context).size.height*0.075,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.circular(25),
                                  // color: Colors.redAccent
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.settings),
                                    Icon(Icons.home),
                                    Icon(Icons.person),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )

                      ),
                    )
                  );
                }
              )
            );
          },
        ),
      ),
    );
  }
}