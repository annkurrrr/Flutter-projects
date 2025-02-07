import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

TextEditingController taskController = TextEditingController();
TextEditingController desController = TextEditingController();
List<String> taskCard = [];
String task = "";

class _MainScreenState extends State<MainScreen> {
  //
  //function to open a text field box to add a new dialog
  void addTask(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                hintText: "Task",
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  taskController = taskCard.add(task);
                });
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask(context);
        },
        backgroundColor: Colors.amber[500],
        child: Icon(
          Icons.add_task_outlined,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        centerTitle: true,
        title: Text(
          "Your To-Do list",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          MyConatiner(),
        ],
      ),
    );
  }
}

class MyConatiner extends StatefulWidget {
  const MyConatiner({super.key});

  @override
  State<MyConatiner> createState() => _MyConatinerState();
}

class _MyConatinerState extends State<MyConatiner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: EdgeInsets.only(top: 12, left: 10, right: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(30, 12, 91, 170),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.task_alt),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(""),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
