import 'dart:ffi';

import 'package:flutter/widgets.dart';

class InheritedProvider extends InheritedWidget {
  final dynamic data;

  InheritedProvider(this.data, {Key key, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
