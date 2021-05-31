import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TbsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child:  TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.all(10),
                  tabs: <Widget>[
                    Text("热门"),
                    Text("推荐"),
                  ],
                ),flex: 1,)


              ],
            )

          ),
          body: TabBarView(
            children: <Widget>[
              Text("热门"),
              Text("推荐"),
            ],
          ),
        ));
  }
}
