import 'package:flutter/material.dart';
import 'package:minimalistic_social_media_app/components/botton.dart';
import 'package:minimalistic_social_media_app/components/textfield.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({
    super.key,
    required this.onTap,
  });

  //text controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //register method
  void register() {}

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

              //username field
              MyTextField(
                hintText: "Username",
                obscureText: false,
                controller: usernameController,
              ),
              SizedBox(height: 10),
              //email field
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              SizedBox(height: 10),

              //password field
              MyTextField(
                hintText: "Set password",
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: 10),

              //re-enter password
              MyTextField(
                hintText: "Re-enter password",
                obscureText: true,
                controller: confirmPasswordController,
              ),
              SizedBox(height: 12),

              //register button
              MyButton(
                text: 'Register',
                onTap: register,
              ),
              SizedBox(height: 12),

              //dont have an account option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already registered?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Login!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
