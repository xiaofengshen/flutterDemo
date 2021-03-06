import 'package:flutter/material.dart';

class ThemeTestRoute extends StatefulWidget {
  const ThemeTestRoute({Key key}) : super(key: key);

  @override
  _ThemeTestRouteState createState() => _ThemeTestRouteState();
}

class _ThemeTestRouteState extends State<ThemeTestRoute> {
  Color _themeColor = Colors.teal; //当前路由主题色
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
        data: ThemeData(
            primarySwatch: _themeColor, //用于导航栏、FloatingActionButton的背景色等
            iconTheme: IconThemeData(color: _themeColor) //用于Icon颜色
            ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("主题测试"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("  颜色跟随主题")
                ],
              ),

              //为第二行Icon自定义颜色（固定为黑色)
              Theme(
                  data: themeData.copyWith(
                      iconTheme:
                          themeData.iconTheme.copyWith(color: Colors.black)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite),
                        Icon(Icons.airport_shuttle),
                        Text("  颜色跟随黑色")
                      ]))
            ],
          ),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.palette),onPressed: () {
            setState(() {

              _themeColor=_themeColor==Colors.teal? Colors.blue :Colors.teal;


            });


          },),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        ));
  }
}
