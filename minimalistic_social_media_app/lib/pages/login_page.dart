import 'package:flutter/material.dart';
import 'package:minimalistic_social_media_app/components/botton.dart';
import 'package:minimalistic_social_media_app/components/textfield.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  //text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //login method
  LoginPage({super.key});
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              SizedBox(height: 25),

              //app name
              const Text(
                'MINIMAL',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 10,
                ),
              ),
              SizedBox(height: 50),

              //email field
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              SizedBox(height: 10),

              //password field
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: 10),

              //forgot password
              Text(
                'Forgot password?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(height: 12),

              //sign in button
              MyButton(
                text: 'Login',
                onTap: login,
              )
              //dont have an account option
            ],
          ),
        ),
      ),
    );
  }
}
