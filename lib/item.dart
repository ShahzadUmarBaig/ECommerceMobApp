import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Item extends StatelessWidget {
  Item(this.name, this.price);

  final name;
  final double price;

  @override
  Widget build(BuildContext context) {
    //Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              child: AlertDialog(
                title: Column(
                  children: <Widget>[
                    Text(name),
                    FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("data"))
                  ],
                ),
              ),
            );
          },
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
                image: DecorationImage(
                    image: AssetImage('assets/cover.jpg'), fit: BoxFit.fill),
              ),
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                price.toString() + ' PKR',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
