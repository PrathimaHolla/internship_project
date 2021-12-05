import 'package:finalproject/models/image.dart';
import 'package:flutter/material.dart';
class menuCard extends StatelessWidget {
  // const menuCard({ Key? key }) : super(key: key);
  final Images image;
  menuCard({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:50,
      height: 50,
      padding: EdgeInsets.all(25),
      // color: Colors.white70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image:AssetImage("lib/assets/images/"+image.imageName+".png")
        ),
      ),
    );
  }
}