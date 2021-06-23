import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/login/LoginPage.dart';
import 'package:untitled/net/result_data.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  DateTime _lastPressedAt; //上次点击时间
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
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
                child: Text("选择图片")),
            ElevatedButton(
                onPressed: () {
                  //未注册的跳转
                  Navigator.pushNamed(context, "/inheritedPage");
                },
                child: Text("跳转共享数据页面")),
            ElevatedButton(
                onPressed: () {
                  //未注册的跳转
                  Navigator.pushNamed(context, "/providerRoute");
                },
                child: Text("购物车")),
          ],
        ),
      ),
      onWillPop: () async {

        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          Fluttertoast.showToast(
              msg: "连续点击退出",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
          return false;
        }

        return true;

      },
    );
  }
}
