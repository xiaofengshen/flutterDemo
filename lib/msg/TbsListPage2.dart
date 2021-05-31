import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TbsListPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabpageState();
  }
}

class TabpageState extends State<TbsListPage2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title:Text("app bar"),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.all(15),
        tabs: <Widget>[
          Text("热门"),
          Text("推荐"),
          Text("常用"),
        ],
        controller: _tabController,
      ),),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text("热门"),
          Text("推荐"),
          Text("常用"),
        ],
      ),
    );
  }
}
