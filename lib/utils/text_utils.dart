import 'package:flutter/material.dart';
class TextUtils extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  const TextUtils({super.key,required this.text,this.color,this.size});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(fontWeight:FontWeight.bold,color:color?? Colors.white,fontSize:size?? 20,shadows: [
    BoxShadow(
    color:Colors.black.withOpacity(0.7),
      offset:const  Offset(10.0,10.0),
      blurRadius: 10.0,
      spreadRadius: 0,
    ),
    BoxShadow(
    color:Colors.grey.shade800.withOpacity(0.5),
    offset:const  Offset(-5.0,-5.0),
    blurRadius: 15,
    spreadRadius: 0,
    ),
    ]),);
  }
}
