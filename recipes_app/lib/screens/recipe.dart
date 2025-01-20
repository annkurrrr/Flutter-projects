import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/styles/support_widget.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "images/pizza.jpg",
              height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width / 1.3,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Margherita pizza",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 10.0),
                  Text(
                    "About recipe",
                    style: AppWidget.boldfieldtextstyle(),
                  ),
                  Text(
                    "In the Middle East, pasta pink sauce is one of the most popular restaurant dishes to order. It’s a blend of tomato and cream sauce, so the resulting pasta sauce is colored pink. It’s really delicious! It has tang from the tomato sauce, and creaminess from white sauce without being too rich and heavy. It makes creamy sauced pasta more approachable!",
                    style: AppWidget.lightfieldtextstyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
