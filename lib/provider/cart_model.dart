import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:untitled/provider/item.dart';

class CartModel extends ChangeNotifier {

  // 用于保存购物车中商品列表
  final List<Item> _items = [];

  // 购物车中商品的总价
  double get totalPrice =>
      _items.fold(0, (value, item) => value + item.count * item.price);


  void add(Item item) {
    _items.add(item);
    // 通知监听器（订阅者），重新构建InheritedProvider， 更新状态。
    notifyListeners();
  }

}