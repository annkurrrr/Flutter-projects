import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/styles/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.grey[100],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Text(
                    "Looking for your\nfavourite meal",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset("images/images (12).jpg",
                        height: 60.0, width: 60.0, fit: BoxFit.cover),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search recipes here",
                  contentPadding: EdgeInsets.only(top: 12),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "images/soup.jpg",
                              height: 140,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            "Soup recipes",
                            style: AppWidget.lightfieldtextstyle(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "images/Indian.jpg",
                              height: 140,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            "Indian recipes",
                            style: AppWidget.lightfieldtextstyle(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "images/chinese.jpg",
                              height: 140,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            "Chinese recipes",
                            style: AppWidget.lightfieldtextstyle(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "images/dessert.jpg",
                              height: 140,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            "Desserts",
                            style: AppWidget.lightfieldtextstyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "images/pizza.jpg",
                            height: 275,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Margherita pizza",
                          style: AppWidget.boldfieldtextstyle(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "images/pasta.jpg",
                            height: 275,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Pink sauce pasta",
                          style: AppWidget.boldfieldtextstyle(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "images/cheesecake.jpg",
                            height: 275,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Philadelphia cheesecake",
                          style: AppWidget.boldfieldtextstyle(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
