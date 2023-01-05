
import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/styles.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("About"),
            centerTitle: true,
          ),
         body: ListView(
           children: [
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: Text("1. what is dart programming language?\n"
                       "Introduction dart programming language :",style: Latobold,),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Dart is an open-source general-purpose programming language. It is originally developed by Google and later approved as a standard by ECMA. Dart is a new programming language meant for the server as well as the browser. Introduced by Google, the Dart SDK ships with its compiler – the Dart VM. The SDK also includes a utility -dart2js, a transpiler that generates JavaScript equivalent of a Dart Script. This tutorial provides a basic level understanding of the Dart programming language.",style: Latobold.copyWith(fontSize: 16),),
                  ),
                 Image.asset("assets/images/dart_programming.jpg",height: 300),
                 Padding(
                   padding: const EdgeInsets.all(12),
                   child: Text("2. what is flutter framework?\n"
                       "Introductiondart programming language :",style: Latobold,),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Text("Flutter is an open source framework to create high quality, high performance mobile applications across mobile operating systems - Android and iOS. It provides a simple, powerful, efficient and easy to understand SDK to write mobile application in Google’s own language, Dart. This tutorial walks through the basics of Flutter framework, installation of Flutter SDK, setting up Android Studio to develop Flutter based application, architecture of Flutter framework and developing all type of mobile applications using Flutter framework.",style: Latobold.copyWith(fontSize: 16),),
                 ),
                 Image.asset("assets/images/flutter_image.png",height: 300),
                 Padding(
                   padding:  EdgeInsets.all(12),
                   child: Text("3. why flutter uses dart?",style: Latobold,),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: 10),
                   child: Text("Dart is AOT (Ahead Of Time) compiled to fast, predictable, native  code, which allows almost all of Flutter to be written in Dart. This not only makes Flutter fast, virtually everything (including all the widgets) can be customized.\n"

                      "Dart can also be JIT (Just In Time) compiled for exceptionally fast development cycles and game-changing workflow (including Flutter’s popular sub-second stateful hot reload).\n"
                     "Developers have found that Dart is particularly easy to learn because it has features that are familiar to users of both static and dynamic languages."
                     ,style: Latobold.copyWith(fontSize: 16),),
                 ),
                 Image.asset("assets/images/dart_flutter.jpg",height: 300),
                 Padding(
                   padding:  EdgeInsets.all(12),
                   child: Text("4. what is App devlopement?",style: Latobold,),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: 10),
                   child: Text("Mobile application development is the process of creating software applications that run on a mobile device, and a typical mobile application utilizes a network connection to work with remote computing resources."
                     ,style: Latobold.copyWith(fontSize: 16),),
                 ),
                 Image.asset("assets/images/App-development.jpg",height: 300),
                 Text("Flutter uses : ",style: TextStyle(fontSize: 32,color: Colors.indigo),),
                 Image.asset("assets/images/flutter_development.png",height: 300),
               ],
             )
           ],
         ),
    ));
  }
}
