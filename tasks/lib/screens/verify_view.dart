import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify your email.'),
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          const Text('Please verify your email address.'),
          TextButton(
              onPressed: () {
                final user = FirebaseAuth.instance.currentUser;
                user?.sendEmailVerification();
              },
              child: const Text('send email verification.'))
        ],
      ),
    );
  }
}
