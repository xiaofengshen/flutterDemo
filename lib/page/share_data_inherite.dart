import 'package:flutter/material.dart';

class ShareDataInherite extends InheritedWidget {
  dynamic data;

  ShareDataInherite(this.data, {Widget child}) : super(child: child);

 static  ShareDataInherite  of<T>(BuildContext context){
  return context.dependOnInheritedWidgetOfExactType<ShareDataInherite>();
   //return context.getElementForInheritedWidgetOfExactType<ShareDataInherite>().widget;

 }


  @override
  bool updateShouldNotify(ShareDataInherite oldWidget) {
    return oldWidget.data != data;
  }
}
