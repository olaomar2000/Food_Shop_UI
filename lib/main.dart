

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemDescription.dart';
import 'item.dart';

void main() {
  runApp(MaterialApp(
    title: 'Food shop ',
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                    Icon(
                      Icons.dehaze,
                      color: Colors.black,
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Fruits and berries',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 24.0, right: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: BouncingScrollPhysics(),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1 / 1.5,
                  children: getListIyem()
                      .map((item) => renderGridItem(item,context))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget renderGridItem(Item item,BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  itemDesription(item)),);
      },
      child: Container(
        decoration: BoxDecoration(
            color: item.color,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                item.title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$' + item.price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    item.pricedes,
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child:Hero(
                  tag: item.title,
                  child: Image.asset(item.image),
                )
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Add to cart',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                        size: 16,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
