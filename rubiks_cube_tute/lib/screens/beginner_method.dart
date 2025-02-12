import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeginnerMethod extends StatefulWidget {
  const BeginnerMethod({super.key});

  @override
  State<BeginnerMethod> createState() => _BeginnerMethodState();
}

class _BeginnerMethodState extends State<BeginnerMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            Text(
              "Beginner method",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Spacer(),
            Icon(
              CupertinoIcons.cube,
              size: 30,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              "Step 1: The white cross",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "Solving the white cross basically means\nyou have to solve the white coloured\nedge pieces correctly that is putting\neach one in their right spot.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195316.png",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 2: The first layer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "Solving the first layer is the second\nstep for solving a rubiks cube where\nyou now solve the white corners of the\ncube.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195332.png",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 3: The second layer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "In this step, you have to solve the\npieces which have the colors same as\nthe centers adjacent to the white center.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195344.png",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 4: Cross on top face",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "In this step, you have to solve the\npcross on the top face, similar to\nthe first step",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195353.png",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 5: Join colors on the sides",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "In the first step, we joined the colors\none the sides to their respective\ncolor. Similarly, we have to join the colors\non the sides to their respective colors.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195402.png",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 6: putting corners in their right spot",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "This step involves putting all the corners\nin the top layer on their correct spots\n(not necessary that they are solved correctly).",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "images/Screenshot 2025-02-11 195410.png",
                  height: 115,
                  width: 115,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Step 7: soving the corners and the cube!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "The last step, involves solving\nthe corners that we put in\ntheir correct spots in the previous step.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Image.asset(
                  "images/Screenshot 2025-02-11 195420.png",
                  height: 130,
                  width: 130,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
