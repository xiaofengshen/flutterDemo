import 'package:flutter/material.dart';
import 'package:untitled/provider/inherited_provider.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  T model;
  Widget child;

  ChangeNotifierProvider({this.model, this.child, Key key}) : super(key: key);

  static T of<T>(BuildContext context){
  var provider = context.dependOnInheritedWidgetOfExactType<InheritedProvider>();

  return provider.data;

  }




  @override
  _ChangeNotifierProviderState<T> createState() =>
      _ChangeNotifierProviderState<T>();
}

class _ChangeNotifierProviderState<T extends ChangeNotifier>
    extends State<ChangeNotifierProvider<T>> {
  void updata() {
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant ChangeNotifierProvider<T> oldWidget) {
    // TODO: implement didUpdateWidget
    if (oldWidget.model != widget.model) {
      oldWidget.model.removeListener(updata);
      widget.model.addListener(updata);
    }

    super.didUpdateWidget(oldWidget);
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.model.addListener(updata);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.model.removeListener(updata);
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider(widget.model, child: widget.child);
  }
}
