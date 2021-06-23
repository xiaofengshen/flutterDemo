import 'package:flutter/material.dart';

class ShareDataInherite extends InheritedWidget{

  final int data;

  ShareDataInherite({
    @required this.data,
    Widget child
  }) :super(child: child);

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataInherite of(BuildContext context) {
   // return context.dependOnInheritedWidgetOfExactType<ShareDataInherite>();
    return context.getElementForInheritedWidgetOfExactType<ShareDataInherite>().widget;
  }


  @override
  bool updateShouldNotify(covariant ShareDataInherite oldWidget) {

   return oldWidget.data != data;
  }
}