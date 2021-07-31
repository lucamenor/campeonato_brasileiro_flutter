import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campeonato Brasileiro 2021',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}