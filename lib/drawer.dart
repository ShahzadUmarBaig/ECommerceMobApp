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
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 3,
                        color: Colors.white,
                      ),
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/cover.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shahzad Umar Baig",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            title: Text('My Tile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('My Tile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('My Tile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
