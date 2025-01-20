import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/styles/support_widget.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add recipe",
                  style: AppWidget.boldfieldtextstyle(),
                )
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(),
                ),
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Recipe name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(right: 21),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.food_bank),
                  hintText: "Write your recipe name",
                  contentPadding: EdgeInsets.only(top: 11),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Write your recipe details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(right: 21),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write your recipe name",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
