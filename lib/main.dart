import 'package:flutter/material.dart';
import 'package:appdelivery/vistas/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Eats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Rubik',
      ),
      home: const MyHomePage(title: 'Uber Eats'),
    );
  }
}
