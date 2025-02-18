import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minimalistic_social_media_app/auth/auth.dart';
import 'package:minimalistic_social_media_app/auth/login_or_register.dart';
import 'package:minimalistic_social_media_app/firebase_options.dart';
import 'package:minimalistic_social_media_app/pages/home_page.dart';
import 'package:minimalistic_social_media_app/pages/profile_page.dart';
import 'package:minimalistic_social_media_app/pages/users_page.dart';
import 'package:minimalistic_social_media_app/themes/dark_mode.dart';
import 'package:minimalistic_social_media_app/themes/light_mode.dart';
import 'dart:async';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    runApp(const MyApp());
  }, (error, stackTrace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(), // Keeps authentication logic
      theme: lightMode, // Keeps light theme
      darkTheme: darkMode, // Keeps dark theme
      routes: {
        '/login_register_page': (context) => LoginOrRegister(),
        '/home_page': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/users_page': (context) => UsersPage(),
      },
    );
  }
}
