import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text("未注册的跳转跳转登录页")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/login");
              },
              child: Text("注册router的跳转跳转登录页")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/registerPage",
                    arguments: {"title": "我是传参 注册"});
              },
              child: Text("注册router传参的跳转跳转登录页")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/drawerPage");
              },
              child: Text("DrawerPage")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/drawerPage");
              },
              child: Text("Button")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/dialogPage");
              },
              child: Text("跳转dialog")),
          ElevatedButton(
              onPressed: () {
                //未注册的跳转
                Navigator.pushNamed(context, "/imagePage");
              },
              child: Text("选择图片"))
        ],
      ),
    );
  }
}
