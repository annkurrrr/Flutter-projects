import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tasks/firebase_options.dart';

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
                      final Email = email.text;
                      final Password = password.text;
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: Email, password: Password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-email') {
                          print('Enter the email');
                        } else if (e.code == 'invalid-credential') {
                          print('Invalid credentials');
                        } else if (e.code == 'missing-password') {
                          print('Missing password');
                        }
                      }
                    },
                    child: const Text('Login'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/register/',
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
