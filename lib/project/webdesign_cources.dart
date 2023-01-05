
import 'package:flutter/material.dart';
import 'package:textfield/screen/login_contact.dart';
import 'package:textfield/screen/utils/custom_drawer.dart';
import 'package:textfield/screen/utils/styles.dart';


class web_design extends StatefulWidget {
  const web_design({Key? key}) : super(key: key);

  @override
  _web_designState createState() => _web_designState();
}

class _web_designState extends State<web_design> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            leading: Image.asset("assets/icon/codec.png"),
            title: Row(
              children: [
                Text("Next page technolgy",style: Latobold,),
                SizedBox(width: 400,),
                
                InkWell(child: Text("Home",style: Latobold,)),
                SizedBox(width: 40,),
                
                InkWell(child: Text("Cources",style: Latobold,)),
                SizedBox(width: 40,),
                
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Logincontact()));
                },
                    child: Text("Sign up",style: Latobold,),hoverColor: Colors.green,),
                SizedBox(width: 40,),
                
                Text("Blog",style: Latobold,),
                SizedBox(width: 40,),
                
                InkWell(child: Text("Contact us",style: Latobold,)),
              ],
            ),
          ),
          endDrawer: CustomDrawer(),
          body: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                  child: Text("welcome flutter community",style: Latobold.copyWith(fontSize: 50,color: Colors.lightGreen),)),
              Row(
                children: [
                  Container(
                    height: 600,
                    width: 700,
                    margin: EdgeInsets.only(top: 100,left: 15),
                    child: Image.asset("images/background_flutter.jpg",fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                           " Flutter is a mobile app development platform created by\n Google. It allows developers to create web, desktop,\n and cross-platform apps that run on Android and iOS devices.\n Flutter uses a reactive programming language called Dart,\n making development faster and easier than traditional\n methods.What are the six 6 Advantages of Flutter\nFlutter's popularity among developers has skyrocketed\n over the past few years due to many Flutter advantages\n it brings to devs: faster code writing, reduced testing\n time, rich documentation, and easy learning\n and usage. Flutter also has a great community that is \nconstantly growing and exchanges experience on Flutter.",style: Latobold.copyWith(color: Colors.black,fontSize: 22),)
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        )
    );
  }
}





class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: TextField(
          decoration:
          InputDecoration(border: InputBorder.none, hintText: 'Search'),
        ),
      ),
    );
  }
}









