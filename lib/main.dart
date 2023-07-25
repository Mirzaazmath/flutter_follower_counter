import 'package:flutter/material.dart';
import 'package:follower_count/screens/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xff2d3037),

      ),
      home: HomeScreen(),
    );
  }
}
