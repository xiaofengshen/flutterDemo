import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonPageState();
  }
}

class ButtonPageState extends State<ButtonPage> {
  var currentPosition = 0;
  var userName = "";
  var isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          OutlinedButton(
            onPressed: () {},
            child: Text("OutlinedButton"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入姓名", labelText: "姓名", icon: Icon(Icons.people)),
            onChanged: (value) {
              setState(() {
                userName = value;
              });
            },
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "请输入密码",
                labelText: "姓名",
                icon: Icon(Icons.people),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: true,
            decoration:
                InputDecoration(hintText: "请输入密码", icon: Icon(Icons.people)),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(onPressed: () {}, child: Text("获取用户名")),
          SizedBox(
            height: 5,
          ),
          Text(userName),
          Checkbox(
            value: isCheck,
            onChanged: (value) {
              setState(() {
                this.isCheck = value;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(value: this.isCheck, onChanged: (value){
            setState(() {
              this.isCheck=value;
            });



          },title: Text("我是标题"),subtitle: Text("我是副标题"),secondary: Icon(Icons.people),)


        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: currentPosition,
        onTap: (value) {
          setState(() {
            this.currentPosition = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 10),
        child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                this.currentPosition = 1;
              });
            },
            backgroundColor:
                this.currentPosition == 1 ? Colors.red : Colors.yellow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
