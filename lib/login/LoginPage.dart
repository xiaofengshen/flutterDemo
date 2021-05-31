import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "/registerPage",arguments: {
                "title":"我是来自登录"

              });


            }, child: Text("注册"))


          ],
        ),
      ),
    );
  }
}
