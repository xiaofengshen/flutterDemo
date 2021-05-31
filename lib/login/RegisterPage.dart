 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/help/HelpPage.dart';

class RegisterPage extends StatelessWidget{

  final arguments;

  RegisterPage({this.arguments});

  @override
  Widget build(BuildContext context) {

    return Scaffold( appBar: AppBar(title: Text(arguments!=null ?arguments["title"]:"注册"),),body: Container(
      child: Column(children: <Widget>[
        ElevatedButton(onPressed: (){

          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){

            return HelpPage();

          }) , (route) => route ==null);

    }, child: Text("跳转注册第二步"),)



      ],),

    ),);


  }




}