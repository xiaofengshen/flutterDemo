 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Container(child: Column(
  children: <Widget>[
    ElevatedButton(onPressed: (){

      Navigator.pushNamed(context, "/tbsListPage");

    }, child: Text("跳转tabs页面11"))
    ,ElevatedButton(onPressed: (){

      Navigator.pushNamed(context, "/tbsListPage2");

    }, child: Text("跳转tabs页面22"))


  ],



) ,);
  }

}