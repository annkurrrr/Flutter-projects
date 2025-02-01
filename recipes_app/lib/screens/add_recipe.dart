import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:recipes_app/services/database.dart';
import 'package:recipes_app/widgets/styles/support_widget.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  File? selectedImage;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController detailcontroller = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);
    setState(() {});
  }

  uploadItem() async {
    if (selectedImage != null &&
        namecontroller.text != "" &&
        detailcontroller.text != "") {
      String addId = randomAlphaNumeric(10);

      Reference firebaseStorageRef =
          FirebaseStorage.instance.ref().child("blogImage").child(addId);
      final UploadTask task = firebaseStorageRef.putFile(selectedImage!);
      var downloadurl = await (await task).ref.getDownloadURL();
      Map<String, dynamic> addrecipe = {
        "Name": namecontroller.text,
        "Detail": detailcontroller.text,
        "Image": downloadurl,
      };
      DatabaseMethods().Addrecipe(addrecipe).then(
        (value) {
          namecontroller.text = "";
          detailcontroller.text = "";
          selectedImage = null;
        },
      );
    }
  }

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
            selectedImage != null
                ? GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.file(
                            selectedImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: Center(
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
                controller: namecontroller,
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
                controller: detailcontroller,
                maxLines: 8,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write your recipe here",
                  contentPadding: EdgeInsets.only(top: 12),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                uploadItem();
              },
              child: Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
