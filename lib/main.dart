import 'package:flutter/material.dart';
import 'package:pointofsale/drawer.dart';
import 'package:pointofsale/mainbody.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      title: 'myPage',
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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
          ]),
      drawer: MyDrawer(_username),
      body: MainBody(),
    );
  }
}
