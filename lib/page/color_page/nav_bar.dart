import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  Color color;
  String title;


   NavBar(this.color,this.title,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: double.infinity,minHeight: 52),
      decoration: BoxDecoration(color: color,boxShadow: [BoxShadow(color:Colors.black12,offset: Offset(0,3),blurRadius: 3 )]),

      child: Text(title,textAlign: TextAlign.center,style: TextStyle( fontWeight: FontWeight.bold,color: color.computeLuminance() <0.5 ? Colors.white:Colors.black),),
      alignment: Alignment.center,


    );
  }
}
