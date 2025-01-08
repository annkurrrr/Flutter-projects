import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IdCard(),
    );
  }
}

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'MY IDENTITY CARD',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/3c3ec5a04f7999baa981abcf01061799.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'Name:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Ankur Kunde',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[500],
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'College:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Goa College of Engineering',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[500],
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'Semester:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              'First',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[500],
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'ankur.kunde2005@gmail.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[500],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
