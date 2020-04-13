import 'package:flutter/material.dart';
import 'package:whats_app/models/main_page.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'LeonSans',
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}