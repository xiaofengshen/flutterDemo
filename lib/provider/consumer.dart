import 'package:flutter/material.dart';
import 'package:untitled/provider/change_notifier_provider.dart';

class Consumer<T> extends StatelessWidget {

  final Widget child;

   Consumer({Key key,@required this.builder,  this.child}) : super(key: key);


  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context,ChangeNotifierProvider.of<T>(context));
  }
}
