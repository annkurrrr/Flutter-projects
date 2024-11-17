import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasks/firebase_options.dart';
import 'package:tasks/screens/login_view.dart';
import 'package:tasks/screens/signup.dart';
import 'package:tasks/screens/verify_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'My-Tasks',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegistrationPage(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return const Tasks();
              } else {
                return const VerificationPage();
              }
            } else {
              return const LoginView();
            }
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

enum MenuAction { logout }

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Tasks'),
          titleTextStyle: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          actions: [
            PopupMenuButton<MenuAction>(
                onSelected: (value) {},
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                        value: MenuAction.logout, child: Text('Logout')),
                  ];
                }),
          ],
        ),
        body: const Text('hello world'));
  }
}
