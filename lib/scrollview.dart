import 'package:flutter/material.dart';
import 'package:pointofsale/item.dart';

class MyScrollView extends StatefulWidget {
  MyScrollView({Key key}) : super(key: key);

  @override
  _MyScrollViewState createState() => _MyScrollViewState();
}

class _MyScrollViewState extends State<MyScrollView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return GridTile(
          child: Item(),
        );
      }),
    );
  }
}
