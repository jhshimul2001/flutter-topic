import 'package:flutter/material.dart';
import 'package:textfield/project/cource.dart';
import 'package:textfield/screen/date_image.dart';
import 'package:textfield/screen/listview_builder.dart';
import 'package:textfield/screen/profile.dart';
import 'package:textfield/screen/utils/color.dart';


class DrawerAndBottomNav extends StatefulWidget {
  const DrawerAndBottomNav({Key? key}) : super(key: key);

  @override
  _DrawerAndBottomNavState createState() => _DrawerAndBottomNavState();
}

class _DrawerAndBottomNavState extends State<DrawerAndBottomNav> {
  late String title="Drawer and Bottom Nav";

  late PageController _pageController;
  int _pageIndex=1;
  late List<Widget> _screenList;
  GlobalKey<ScaffoldMessengerState> _scaffoldKey=GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 0);
    _screenList=[
      cource(),
      profiledemo(),
      Listviewdemo(),
      DateTimeImage(),
    ];
  }
  _setPage(int index){
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if(_pageIndex!=1){
          _setPage(1);
          return false;
        }else{
          return true;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,
        ),

        drawer: customDrawer(),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          decoration: const BoxDecoration(
              color: ColorResources.COLOR_PRIMARY,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
          ),
          child: Row(
            children: [
              BottomNavItem(icon: Icons.code, isSelect: _pageIndex==0, onTap:()=> _setPage(0)),
              BottomNavItem(icon: Icons.plagiarism_rounded, isSelect: _pageIndex==1, onTap:()=> _setPage(1)),
              BottomNavItem(icon: Icons.call, isSelect: _pageIndex==2, onTap:()=> _setPage(2)),
              BottomNavItem(icon: Icons.timer, isSelect: _pageIndex==3, onTap:()=> _setPage(3)),

            ],
          ),
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: _screenList.length,
            physics: ScrollPhysics(),
            itemBuilder: (context, index){
              return _screenList[index];
            }),

      ),
    );
  }
}


class customDrawer extends StatelessWidget {
  const customDrawer({
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
                  image: DecorationImage(image: AssetImage("assets/images/shimul_fb.jpg"))
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
              Navigator.pop(context);
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

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isSelect;
  late Function() onTap;


  BottomNavItem({required this.icon, required this.isSelect, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: (){
        onTap();
      },
      child: Icon(icon),
      /* Image.asset(
        image,
        width: isSelect ? 45:35,
        height: isSelect ? 45:35,
      ),*/
    ));
  }
}
