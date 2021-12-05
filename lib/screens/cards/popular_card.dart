import 'package:finalproject/models/popular.dart';
import 'package:flutter/material.dart';
class PopularCard extends StatelessWidget {
  // const PopularCard({ Key? key }) : super(key: key);
  final Popular popular;
  PopularCard({required this.popular});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 150,
      margin: EdgeInsets.fromLTRB(24, 10, 0, 20),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(25),
        color: Colors.white60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("lib/assets/images/"+popular.imageN+".png"),
                fit: BoxFit.fill
              )
            ),
          ),
          Container(
            height: 70,
            // color: Colors.amber,
            child:Row(
              children: [
                Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0,5),
                      child: Text(
                        popular.flowerName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17
                        ),),
                    ),
                      Container(
                        
                        child: Text(
                        popular.cost.toString(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 165, 123, 1),
                          fontSize: 22
                        ),),
                      )
                  ],
                ),
                
                Container(
                  width: 100,
                  height: 80,
                  child:Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add_box,
                    size: 50,
                    color: Color.fromRGBO(26, 165, 123, 1),)
                  )
                )    
              ],
              
            ),
            
          )
        ],
      ),
    );
  }
}