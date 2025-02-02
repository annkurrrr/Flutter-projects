import 'package:flutter/material.dart';
import 'package:minimalistic_social_media_app/auth/login_or_register.dart';
import 'package:minimalistic_social_media_app/themes/dark_mode.dart';
import 'package:minimalistic_social_media_app/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
