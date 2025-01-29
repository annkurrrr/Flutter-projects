import 'package:flutter/material.dart';
import 'package:recipes_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes app',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
