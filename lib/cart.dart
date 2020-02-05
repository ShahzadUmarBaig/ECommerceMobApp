import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text("Cart"),
      ),
      body: Container(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          elevation: 10,
          //icon: Icon(Icons.forward),
          label: Text(
            "Order Now",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
