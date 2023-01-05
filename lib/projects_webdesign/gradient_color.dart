import 'package:flutter/material.dart';
import 'package:textfield/projects_webdesign/landing_page.dart';
import 'package:textfield/projects_webdesign/web_design_2.dart';


class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.green,
                ],
              )
          ),
        child: ListView(
          children:[
            Column(
            children: [
               Navbar(),Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                 child: Landingpage(),
               )
            ],
          ),
      ]
        ),
      ),
    );
  }
}
