import 'package:flutter/material.dart';
import 'package:textfield/screen/date_image.dart';
import 'package:textfield/screen/from_textfieldfrom.dart';
import 'package:textfield/screen/listview_builder.dart';
import 'package:textfield/screen/login_contact.dart';
import 'package:textfield/screen/profile.dart';
import 'package:textfield/screen/tab_bar.dart';

import 'package:textfield/screen/utils/BackgroundImage.dart';
import 'package:textfield/screen/utils/check.dart';

import 'project/webdesign_cources.dart';
import 'projects_webdesign/gradient_color.dart';
import 'screen/grid_view.dart';
import 'screen/utils/about.dart';
import 'screen/utils/customIcon.dart';
import 'screen/utils/customImagenavigationbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next page company ltd"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
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
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>profiledemo()));
                },
                child: Text("profile"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>pofile()));
                },
                child: Text("profile"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Logincontact()));
                },
                child: Text("Login"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>createac()));
                },
                child: Text("Form"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Listviewdemo()));
                },
                child: Text("call"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>DateTimeImage()));
                },
                child: Text("date"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>web_design()));
                },
                child: Text("web"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>navigation()));
                },
                child: Text("navigation"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>About()));
                },
                child: Text("about"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>live()));
                },
                child: Text("live"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>DrawerAndBottomNav()));
                },
                child: Text("drawer"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHome()));
                },
                child: Text("web2"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>TabBarDemo()));
                },
                child: Text("Tavbar"),
              ),
              SizedBox(height: 20,),
              MaterialButton(color: Colors.white,
                hoverColor: Colors.grey,
                highlightColor: Colors.lime,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>gridview()));
                },
                child: Text("gridview"),
              ),
            ],
          ),
        ]
        ),
      ),
    );
  }
}

