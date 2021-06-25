import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/share_data_inherite.dart';
import 'package:untitled/page/test_widget.dart';

class Inheritedpage extends StatefulWidget {
  const Inheritedpage({Key key}) : super(key: key);

  @override
  _InheritedpageState createState() => _InheritedpageState();
}

class _InheritedpageState extends State<Inheritedpage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited"),
      ),
      body: ShareDataInherite(
        num,
        child: Column(
          children: [
            TestWidget(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    ++num;
                  });
                },
                child: Text("点击+1"))
          ],
        ),
      ),
    );
  }
}
