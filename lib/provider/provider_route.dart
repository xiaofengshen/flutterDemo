import 'package:flutter/material.dart';
import 'package:untitled/provider/change_notifier_provider.dart';
import 'package:untitled/provider/consumer.dart';
import 'package:untitled/provider/item.dart';

import 'cart_model.dart';

class ProviderRoute extends StatefulWidget {
  const ProviderRoute({Key key}) : super(key: key);

  @override
  _ProviderRouteState createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
      ),
      body: ChangeNotifierProvider<CartModel>(
        model: CartModel(),
        child: Center(
            child: Column(
          children: [

            Consumer( builder: (context, value) => Text(value.totalPrice.toString())),
            Consumer(builder: (context, value) {

           return   ElevatedButton(child: Text("加入购物车数量"),onPressed: () {


             value.add(Item(10,1));


              },);


            },)

          ],
        )),
      ),
    );
  }
}
