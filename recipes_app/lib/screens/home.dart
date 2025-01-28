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
        margin: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Text(
                    "Looking for your\nfavourite meal",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      "images/images (12).jpg",
                      height: 60.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              margin: const EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search recipes here",
                  contentPadding: EdgeInsets.only(top: 12),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryCard("Soup recipes", "images/soup.jpg"),
                  _buildCategoryCard("Indian recipes", "images/indian.jpg"),
                  _buildCategoryCard("Chinese recipes", "images/chinese.jpg"),
                  _buildCategoryCard("Desserts", "images/dessert.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            // Main Recipe List
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRecipeCard("Margherita pizza", "images/pizza.jpg"),
                  _buildRecipeCard("Pink sauce pasta", "images/pasta.jpg"),
                  _buildRecipeCard(
                      "Philadelphia cheesecake", "images/cheesecake.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7.0),
          Text(
            title,
            style: AppWidget.lightfieldtextstyle(),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              height: 275,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: AppWidget.boldfieldtextstyle(),
          ),
        ],
      ),
    );
  }
}
