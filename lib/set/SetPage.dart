import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  const SetPage({Key key}) : super(key: key);

  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  var count = 0;

  @override
  Widget build(BuildContext context) {
    print("build");

    return Column(
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(text: "home:"),
          TextSpan(
              text:
                  "https://book.flutterchina.club/chapter3/text.html#_3-3-文本及样式",
              style: TextStyle(color: Colors.red))
        ]))
      ],
    );
  }

  @override
  void didUpdateWidget(covariant SetPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }
}
