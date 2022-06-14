import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rumus Bangun Datar',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}
