import 'package:comeisp20/home_app.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comedor ISP20',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: HomeApp()
    );
  }
}