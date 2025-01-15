import 'package:demo2/screens/homepage.dart';
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200.0),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter your email here.',
                hintStyle: TextStyle(
                  color: Colors.grey[200],
                ),
              ),
              style: TextStyle(
                color: Colors.grey[250],
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password here.',
                hintStyle: TextStyle(
                  color: Colors.grey[200],
                ),
              ),
              style: TextStyle(
                color: Colors.grey[250],
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.grey[200],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
