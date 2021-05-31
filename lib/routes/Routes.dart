import 'package:flutter/material.dart';
import 'package:untitled/button/ButtonPage.dart';
import 'package:untitled/dialog/DialogPage.dart';
import 'package:untitled/drawer/DrawerPage.dart';
import 'package:untitled/image/ImagePage.dart';
import 'package:untitled/login/LoginPage.dart';
import 'package:untitled/login/Register2Page.dart';
import 'package:untitled/login/RegisterPage.dart';
import 'package:untitled/msg/TbsListPage.dart';
import 'package:untitled/msg/TbsListPage2.dart';

var routers = {
  "/login": (context) => LoginPage(),
  "/registerPage": (context,{arguments}) => RegisterPage(arguments: arguments,),
  "/Register2Page": (context,{arguments}) => Register2Page(arguments: arguments,),
  "/tbsListPage": (context,{arguments}) => TbsListPage(),
  "/tbsListPage2": (context,{arguments}) => TbsListPage2(),
  "/drawerPage": (context,{arguments}) => DrawerPage(),
  "/buttonPage": (context,{arguments}) => ButtonPage(),
  "/dialogPage": (context,{arguments}) => DialogPage(),
  "/imagePage": (context,{arguments}) => ImagePage(),
};

Function onGenerateRoute = (settings) {
// 统一处理
  final String name = settings.name;
  print(name);
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));

      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};