import 'package:flutter/material.dart';
import 'package:serv_udyam/home/Home.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}