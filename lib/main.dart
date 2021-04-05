import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPorfolio(),
    );
  }
}

class MyPorfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
