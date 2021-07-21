import 'package:flutter/material.dart';
import 'package:techware/UI/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Techware Enterprises',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
