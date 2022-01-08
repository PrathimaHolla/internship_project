import 'package:finalproject/models/popular.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatefulWidget {
  // const PopularCard({ Key? key }) : super(key: key);

  final Popular popular;
  PopularCard({required this.popular});

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  _incrementButton() {
    widget.popular.count++;
  }

  _decreamentButton() {
    widget.popular.count--;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 300,
        margin: EdgeInsets.fromLTRB(24, 10, 0, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white60,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/" +
                            widget.popular.imageN +
                            ".png"),
                        fit: BoxFit.fill)),
              ),
              Container(
                // height: 70,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          // width : 100,
                          // height: 80,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Text(
                            widget.popular.flowerName,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            widget.popular.cost.toString(),
                            style: TextStyle(
                                color: Color.fromRGBO(26, 165, 123, 1),
                                fontSize: 22),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      widget.popular.count++;
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromRGBO(26, 165, 123, 1),
                                ))),
                        Container(
                            child: Text(widget.popular.count.toString()),
                            alignment: Alignment.centerRight),
                        Container(
                            width: 30,
                            height: 30,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: FloatingActionButton(
                                  child:
                                      Icon(Icons.remove, color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      if (widget.popular.count > 0)
                                        widget.popular.count--;
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromRGBO(26, 165, 123, 1),
                                )))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}