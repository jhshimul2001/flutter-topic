import 'package:flutter/material.dart';
import 'package:textfield/project/cource.dart';
import 'package:textfield/projects_webdesign/gradient_color.dart';
import 'package:textfield/screen/utils/BackgroundImage.dart';
import 'package:textfield/screen/utils/about.dart';
import 'package:textfield/screen/utils/color.dart';

import 'custom_drawer.dart';


class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  late String title="Drawer and Bottom Nav";
  late PageController pageController;
  int pageIndex = 1;
  late List screenList;
  GlobalKey<ScaffoldMessengerState> _scaffoldkey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController =PageController(initialPage: 0);
    screenList = [
      MyHome(),
      About(),
      live(),
      cource(),
    ];
  }
  setPage(int index){
    setState(() {
      pageController.jumpToPage(index);
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (pageIndex!=1) {
            setPage(1);
            return false;
          } else {
            return true;
          }
        },

      child: Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),

      drawer: CustomDrawer(),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          decoration: const BoxDecoration(
              color: ColorResources.COLOR_PRIMARY,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
          ),
          child: Row(
            children: [
              BottomNavigationBarItem(image:"assets/icon/online-course.png" , isselect: pageIndex==0, onTap:()=> setPage(0)),
              BottomNavigationBarItem(image:"assets/icon/faq.png", isselect: pageIndex==1, onTap:()=> setPage(1)),
              BottomNavigationBarItem(image: "assets/icon/icons8-live-stream-64.png", isselect: pageIndex==2, onTap:()=> setPage(2)),
              BottomNavigationBarItem(image:"assets/icon/codec.png", isselect: pageIndex==3, onTap:()=> setPage(3)),
              BottomNavigationBarItem(image:"assets/icon/customer-service.png", isselect: pageIndex==4, onTap:()=> setPage(4)),
            ],
          ),
    ),
      body: PageView.builder(
          controller: pageController,
          itemCount: screenList.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return screenList[index];
          }),

    ),
    );
  }
}













class BottomNavigationBarItem extends StatelessWidget {
  final image;
  final bool isselect;
  late Function() onTap;
  BottomNavigationBarItem({ this.image, required this.isselect,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell (
            onTap:() {
              onTap();
            },
            child: Image.asset(image,height: 30,width: 30,)
        )
    );
  }
}