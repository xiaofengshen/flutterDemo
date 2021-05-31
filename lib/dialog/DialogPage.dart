import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/dialog/version_model.dart';
import 'package:untitled/net/http_callback.dart';
import 'package:untitled/net/http_utils.dart';
import 'package:untitled/bean/version_info.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DialogState();
  }
}

class DialogState extends State<DialogPage> {
  _showDialog() {
    showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
              title: Text("我是标题"),
              content: Text("今天下大雨了"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("确定"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("取消"),
                ),
              ]);
        });
  }

  _showSingleDialog() {
    showDialog(
        context: context,
        builder: (buildContext) {
          return SimpleDialog(
            title: Text("标题"),
            children: [
              Text("内容1"),
              Divider(),
              Text("内容2"),
              Text("内容3"),
              Text("内容4"),
              Text("内容5"),
              Text("内容6"),
            ],
          );
        });
  }

  _showDialog1() {
    showDialog(
        context: context,
        builder: (buildContext) {
          return Dialog(
            child: Text("hdosidhsidoisdi"),
          );
        });
  }

  _showDialog2() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return Container(
            child: Column(
              children: [
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            ),
            height: 200,
            width: double.infinity,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                _showDialog();
              },
              child: Text("Dialog")),
          ElevatedButton(
              onPressed: () {
                _showSingleDialog();
              },
              child: Text("单选Dialog")),
          ElevatedButton(
              onPressed: () {
                _showDialog1();
              },
              child: Text("单选Dialog1")),
          ElevatedButton(
              onPressed: () {
                _showDialog2();
              },
              child: Text("单选Dialog2")),
          ElevatedButton(
              onPressed: () {
                _showToast();
              },
              child: Text("toast")),
          ElevatedButton(
              onPressed: () {
                VersionModel().checkUpdate<VersionInfo>(HttpCallback(
                  onSuccess: (data) {
                    print("回调${data.info.updateContent}");
                  },
                  onError: (code, msg) {},
                ));
              },
              child: Text("网络请求"))
        ],
      ),
    );
  }

  void _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
