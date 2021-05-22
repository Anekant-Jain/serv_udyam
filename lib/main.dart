import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:serv_udyam/Verification/otp.dart';
import 'package:serv_udyam/home/Home.dart';
import 'package:serv_udyam/home/banner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp((MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}