 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register2Page extends StatelessWidget{

  final arguments;

  Register2Page({this.arguments});

  @override
  Widget build(BuildContext context) {

    return Scaffold( appBar: AppBar(title: Text(arguments!=null ?arguments["title"]:"注册"),),);


  }




}