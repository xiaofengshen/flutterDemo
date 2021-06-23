import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/share_data_inherite.dart';
import 'package:untitled/page/test_widget.dart';

class InheritedPage extends StatefulWidget {
  @override
  _InheritedPageState createState() => _InheritedPageState();
}

class _InheritedPageState extends State<InheritedPage> {
  int count = 0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("共享数据"),
      ),

      body: Container(
        height: 400,
        width: 500,
        child: ShareDataInherite(
            data: count,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TestWidget(),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text("点击+1"))
              ],
            )),
      ),
    );
  }
}
