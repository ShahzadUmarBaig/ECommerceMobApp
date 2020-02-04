import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer(this.name); // : super(key: key);

  final name;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 40,
                    child: Image(
                      width: 50,
                      height: 50,
                      image: AssetImage('assets/myPick.png'),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 60,
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text("My First Tile"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
