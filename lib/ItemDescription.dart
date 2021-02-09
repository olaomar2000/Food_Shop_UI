import 'dart:ffi';
import 'dart:wasm';

import 'item.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemDesription extends StatelessWidget {
  final Item item;
  itemDesription(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.color,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 48),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black,
                        size: 28.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                  height: 120,
                  child: Hero(
                    tag: item.title,
                    child: Image.asset(item.image),
                  )),
            ),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.title,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        item.pricedes,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                  ),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                color: Colors.grey[200],
                                width: 48,
                                height: 48,
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )),
                            ],
                          )),
                          Container(
                              child: Text(
                            r"$ " + item.price,
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,

                            children: <Widget>[
                              Text(
                                'Product description',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15,),
                              Text(item.description,style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                              ),)
                            ],
                          ),


                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border: Border.all(
                                  color: item.color,
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: item.color,
                                size: 36,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),

                          Expanded(
                            child: Container(
                              height: 72,
                              decoration: BoxDecoration(
                                color: item.color,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
