import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasks/constants/routes.dart';
import 'package:tasks/enums/menu_actions.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  String buttonName1 = '🗑️'; // Recycle bin
  String buttonName2 = '☁︎';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('FILE MANAGER'),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        actions: [
          PopupMenuButton<MenuAction>(onSelected: (value) async {
            switch (value) {
              case MenuAction.logout:
                final shouldLogout = await showLogOutDialog(context);
                if (shouldLogout) {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(loginRoute, (_) => false);
                }
            }
          }, itemBuilder: (context) {
            return const [
              PopupMenuItem(value: MenuAction.logout, child: Text('Logout')),
            ];
          }),
        ],
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    ElevatedButton(
                        // style: ElevatedButton.styleFrom(
                        //     onPrimary: Colors.white, primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            buttonName1 = 'Clicked';
                          });
                        },
                        child: Text(buttonName1)),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    ElevatedButton(
                        // style: ElevatedButton.styleFrom(
                        //     onPrimary: Colors.white, primary: Colors.black87),
                        onPressed: () {
                          setState(() {
                            buttonName2 = 'Clicked';
                          });
                        },
                        child: Text(buttonName2)),
                  ],
                ),
              )
            : SizedBox(
                child: AppBar(
                  title: const Text('Contact Number: 555-5555-55555'),
                ),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 120, 81, 194),
        selectedItemColor: const Color.fromARGB(255, 255, 17, 0),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Sign out"),
          content: const Text("Are you sure you wanna sign out"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("Cancel")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("Log out")),
          ],
        );
      }).then((value) => value ?? false);
}
