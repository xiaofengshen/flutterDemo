import 'package:flutter/material.dart';

import 'nav_bar.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("主题颜色"),),body: Column(children: [
      NavBar(Colors.blue,"标题"),

Padding(padding: EdgeInsets.only(top: 20) ,child:       NavBar(Colors.white,"标题"),)


    ],),);
  }
}
