import 'package:flutter/material.dart';
import 'package:untitled4/screens/land_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //home: profilePage(),
        //home:  LoginPage()
      home: Landing()
    );
  }
}