import 'package:demo2/screens/homepage.dart';
import 'package:demo2/service/auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 200.0),
            TextField(
              style: TextStyle(
                color: Colors.grey[250],
              ),
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter your email here.',
                hintStyle: TextStyle(
                  color: Colors.grey[200],
                ),
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
            ),
            TextButton(
              onPressed: () async {
                dynamic result = await _auth.signInAnonymously();
                if (result == null) {
                  print('error signing in');
                } else {
                  print('signed in');
                  print(result);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                }
              },
              child: Text(
                'Login as guest',
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
