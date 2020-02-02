import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Item({Key key}) : super(key: key);

  var sizeBoxHeight;
  var sizeBoxWidth;

  _getSizes() {
    final RenderBox renderBoxRed = _globalKey.currentContext.findRenderObject();
    sizeBoxHeight = renderBoxRed.size.height;
    sizeBoxWidth = renderBoxRed.size.width;
  }

  GlobalKey _globalKey = GlobalKey();

  final name = '';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(3),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 5.0,
        child: InkWell(
          onTap: () {
            _getSizes();
            print("$sizeBoxWidth,$sizeBoxHeight,$screenSize");
          },
          child: Container(
              width: sizeBoxWidth,
              height: sizeBoxHeight,
              key: _globalKey,
              child: Column(
                children: <Widget>[
                  Image(
                    width: sizeBoxWidth,
                    height: sizeBoxHeight,
                    image: AssetImage('assets/images/myPick.png'),
                  ),
                  Text("data"),
                  Text("data"),
                  FlatButton(
                    child: Text("data"),
                    onPressed: () {
                      _getSizes();
                      print("$sizeBoxWidth,$sizeBoxHeight,$screenSize");
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }
}
