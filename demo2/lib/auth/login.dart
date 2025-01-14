import 'dart:io';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text(
          'Welcome back!',
          style: TextStyle(
            letterSpacing: 3,
            fontWeight: FontWeight.w600,
            color: Colors.grey[200],
          ),
        ),
      ),
    );
  }
}
