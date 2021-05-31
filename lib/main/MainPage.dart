import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/help/HelpPage.dart';
import 'package:untitled/home/HomePage.dart';
import 'package:untitled/msg/MsgPage.dart';
import 'package:untitled/set/SetPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}


var listPage =[
  HomePage(),
  MsgPage(),
  HelpPage(),
  SetPage()


];

class _MainState extends State<MainPage> {
  var currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: listPage[currentPosition],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "帮助"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
        selectedItemColor: Colors.red,
        currentIndex: currentPosition,
        onTap: (index) {
          setState(() {
            currentPosition = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,
        unselectedFontSize: 14.0,
        selectedFontSize: 14.0,
      ),
    );
  }
}
