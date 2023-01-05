
import 'package:flutter/material.dart';
import 'package:textfield/project/cource.dart';
import 'package:textfield/screen/profile.dart';
import 'package:textfield/screen/utils/about.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 320,
            width: double.infinity,
            child:  DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/shimul.jpg"))
              ),
              child: Column(
                children: [
                  Text("")
                ],
              ),
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icon/profile.png",height: 40,width: 40,),
            title:  Text(' My Profile '),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => profiledemo()));
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/online-course.png",height: 40,width: 40,),
            title: const Text(' My Course '),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => cource()));
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/icons8-live-stream-64.png",height: 40,width: 40,),
            title: const Text(' online cources '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/faq.png",height: 40,width: 40,),
            title: const Text(' blog '),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/codec.png",height: 40,width: 40,),
            title: const Text(' code '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/facebook.png",height: 40,width: 40,),
            title: const Text('facebook'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/twitter.png",height: 40,width: 40,),
            title: const Text('twitter'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset("assets/icon/customer-service.png",height: 40,width: 40,),
            title: const Text('help'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
