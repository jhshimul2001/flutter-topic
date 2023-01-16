import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class camera_gallery extends StatefulWidget {
  const camera_gallery({Key? key}) : super(key: key);

  @override
  State<camera_gallery> createState() => _camera_galleryState();
}

class _camera_galleryState extends State<camera_gallery> {
  String fileName = "";
  File? file;
  final picker = ImagePicker();



  void _chooseCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  void _chooseGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: Text("date and time"),
    centerTitle: true,
    ),
    backgroundColor: Colors.blueGrey,
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
    Colors.blueGrey,
    Colors.blue,
    ],
    )
    ),
    child: Padding(
    padding: const EdgeInsets.all(20),
    child: ListView(
    children: [
      InkWell(
        onTap: () async {
          _chooseCamera();
        },
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Center(child: Text("Capture",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,))),
        ),
      ),

      SizedBox(height: 20,),

      InkWell(
        onTap: () async {
          _chooseGallery();
        },
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Center(child: Text("Choose from gallery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,))),
        ),
      ),
      SizedBox(height: 20,),
      file!=null ? Image.file(file! , height: 300, width: double.infinity, fit: BoxFit.cover,) : Container(),

    ],

    ),

    ),

    ),
        )
    );
  }
}
