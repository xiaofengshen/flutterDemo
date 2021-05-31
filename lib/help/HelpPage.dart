import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text("普通按钮"),
              ),
              SizedBox(),
              ElevatedButton(
                onPressed: () {},
                child: Text("有颜色"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              )
            ],
          )
        ],
      ),
    );
  }
}
