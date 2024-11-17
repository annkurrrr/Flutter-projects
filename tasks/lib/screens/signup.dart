import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tasks/firebase_options.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
          title: const Text('REGISTER'),
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
                            .createUserWithEmailAndPassword(
                                email: Email, password: Password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-email') {
                          print('The email address is not valid');
                        } else if (e.code == 'missing-password') {
                          print('please set a password');
                        } else if (e.code == 'weak-password') {
                          print('Please enter a strong password');
                        } else if (e.code == 'email-already-in-use') {
                          print('Email is already registered');
                        }
                      }
                    },
                    child: const Text('Register'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/login/',
                          (route) => false,
                        );
                      },
                      child: const Text('Already registered? login!'))
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
