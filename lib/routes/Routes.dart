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
import 'package:untitled/page/color_page/color_page.dart';
import 'package:untitled/page/future/future_page.dart';
import 'package:untitled/page/inherited_page.dart';
import 'package:untitled/page/theme_test_route/ThemeTestRoute.dart';
import 'package:untitled/provider/provider_route.dart';

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
  "/inheritedPage": (context,{arguments}) => Inheritedpage(),
  "/providerRoute": (context,{arguments}) => ProviderRoute(),
  "/colorPage": (context,{arguments}) => ColorPage(),
  "/themeTestRoute": (context,{arguments}) => ThemeTestRoute(),
  "/futurePage": (context,{arguments}) => FuturePage(),
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