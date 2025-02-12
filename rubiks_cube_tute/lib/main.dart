import 'package:flutter/material.dart';
import 'package:rubiks_cube_tute/screens/beginner_method.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeginnerMethod(),
    );
  }
}
