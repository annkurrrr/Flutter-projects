import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  // current logged in user
  final User? currentUser = FirebaseAuth.instance.currentUser;

  // future to fetch user details
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetails() async {
    return await FirebaseFirestore.instance
        .collection("Users")
        .doc(currentUser!.email)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: getUserDetails(),
        builder: (context, snapshot) {
          //loading...
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          //error
          else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          }

          //data received
          else if (snapshot.hasData) {
            //extract data
            Map<String, dynamic>? user = snapshot.data!.data();

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Profile icon
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    padding: EdgeInsets.all(24),
                    child: Icon(
                      Icons.person,
                      size: 28,
                    ),
                  ),
                  SizedBox(height: 20),
                  //username
                  Text(
                    "Username: ${user!["Username"]}",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  //email
                  Text(
                    "Email: ${user!["Email"]}",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Text("No data");
          }
        },
      ),
    );
  }
}
