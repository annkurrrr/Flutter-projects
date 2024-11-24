import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tasks/constants/routes.dart';
import 'package:tasks/firebase_options.dart';
import 'dart:developer' as devtools show log;

import 'package:tasks/utilities/show_error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController email;
  late final TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('LOGIN'),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  TextField(
                    controller: email,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: 'Enter your email here.'),
                  ),
                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: password,
                    decoration: const InputDecoration(
                        hintText: 'Enter your password here.'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final email_ = email.text;
                      final password_ = password.text;
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email_,
                          password: password_,
                        );
                        final user = FirebaseAuth.instance.currentUser;
                        if (user?.emailVerified ?? false) {
                          //user is verified
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            tasksRoute,
                            (route) => false,
                          );
                        } else {
                          //user is not verified
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              verificationRoute, (route) => false);
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-email') {
                          await showErrorDialog(
                              context, 'Please enter your details');
                        } else if (e.code == 'invalid-credential') {
                          await showErrorDialog(
                              context, 'Invalid credentials, user not found.');
                        } else if (e.code == 'missing-password') {
                          await showErrorDialog(
                              context, 'Enter your password.');
                        }
                      }
                    },
                    child: const Text('Login'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          registerRoute,
                          (route) => false,
                        );
                      },
                      child: const Text('Not registered yet? Register here!'))
                ],
              );
            default:
              return const Text('Loading...');
          }
        },
      ),
    );
  }
}
