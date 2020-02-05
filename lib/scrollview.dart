import 'package:flutter/material.dart';
import 'package:pointofsale/item.dart';

class MyScrollView extends StatefulWidget {
  MyScrollView({Key key}) : super(key: key);

  @override
  _MyScrollViewState createState() => _MyScrollViewState();
}

class _MyScrollViewState extends State<MyScrollView> {
  List<Item> myitems = [
    new Item('Shahzad', 100),
    new Item('Khalid', 200),
    new Item('Asim', 155),
    new Item('Shahbaz', 50),
    new Item('Sajid', 99),
    new Item('Fardeen', 12),
    new Item('Kashif', 44),
    new Item('Farhan', 26),
    new Item('Raju', 95),
    new Item('Sohail', 93),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: myitems.length,
      itemBuilder: (BuildContext context, int index) {
        return myitems[index];
      },
    );
  }
}
