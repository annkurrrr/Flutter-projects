import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minimalistic_social_media_app/components/botton.dart';
import 'package:minimalistic_social_media_app/components/textfield.dart';
import 'package:minimalistic_social_media_app/helpers/helper_functions.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //register method
  void registerUser() async {
    //circular loading avatar
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    //making sure passwords match
    if (passwordController != confirmPasswordController) {
      //pop circular loading avatar
      Navigator.pop(context);
      //show error message to user
      displayMessageToUser("Passwords don't match", context);
      //try creating the user
    }
    try {
      //create the user
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop the circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the circle
      Navigator.pop(context);
      //display error message to user
      displayMessageToUser(e.code, context);
    }
  }

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
                onTap: registerUser,
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
                    onTap: widget.onTap,
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
