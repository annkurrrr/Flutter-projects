import 'package:flutter/material.dart';
import 'package:internspirit_hackathon/components/text_field.dart';
import 'package:internspirit_hackathon/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.architecture,
              size: 80,
            ),
            Text(
              "App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MyTextField(
                controller: emailController,
                hintText: "Enter your email here...",
                obscureText: false,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MyTextField(
                controller: passwordController,
                hintText: "Enter your password here...",
                obscureText: true,
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                "Login!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Text(
                "Don't have an account? register here!",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot password",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
