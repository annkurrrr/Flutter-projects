import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internspirit_hackathon/components/text_field.dart';
import 'package:internspirit_hackathon/helper/display_mesg.dart';
import 'package:internspirit_hackathon/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
    if (passwordController.text != confirmPasswordController.text) {
      Navigator.pop(context);
      displayMessageToUser("Passwords don't match", context);
    } else {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        displayMessageToUser(e.code, context);
      }
    }
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
                controller: usernameController,
                hintText: "Enter a username...",
                obscureText: false,
              ),
            ),
            SizedBox(height: 5),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MyTextField(
                controller: confirmPasswordController,
                hintText: "Re-enter password...",
                obscureText: true,
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                register();
              },
              child: Text(
                "Register!",
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
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text(
                "Already have an account? Login here!",
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
