import 'package:flutter/material.dart';
import 'package:pointofsale/drawer.dart';
import 'package:pointofsale/item.dart';

import 'package:pointofsale/scrollview.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'myPage',
      home: MainScreen(),
    ));

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final _username = 'Shahzad Umar Baig';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Building First App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              height: 48.0,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 9.5,
                      ),
                      hintText: "Input Search",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(_username),
      body: MyScrollView(),
    );
  }
}
