
import 'package:astrological_sign/burc_listesi.dart';
import 'package:flutter/material.dart';
import 'package:astrological_sign/model/burc.dart';

void main(){
  runApp(MyApp());
}
// stle makes a fast group of code below
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: BurcListesi(),
    );
  }
}