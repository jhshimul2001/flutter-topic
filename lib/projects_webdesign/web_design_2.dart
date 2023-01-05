
import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/about.dart';
import 'package:textfield/screen/utils/styles.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context,constraints){
          if(constraints.maxWidth > 1200){
            return DesktopNavbar();
          } else if(constraints.maxWidth > 800 && constraints.maxWidth<1200){
              return DesktopNavbar();
          } else{
            return Mobiledesign();
          }
    }
    );
  }
}


class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Welcome Flutter community",style: Latobold.copyWith(color:Colors.white,fontSize: 35),
             ),
            Row(
              children: [
                // InkWell(onTap: (){},child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 18),),hoverColor: Colors.blue,highlightColor: Colors.black,),
                // SizedBox(width: 30,),
                // Text("courcec",style: TextStyle(color: Colors.white,fontSize: 18),),
                // SizedBox(width: 30,),
                // Text("Blog",style: TextStyle(color: Colors.white,fontSize: 18),),
                // SizedBox(width: 30,),
                // Text("Contact us",style: TextStyle(color: Colors.white,fontSize: 18),),
                // SizedBox(width: 30,),
                MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  highlightColor: Colors.lime,
                  height: 35,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){},
                  child: Text("Home"),
                ),
                SizedBox(width: 10,),
                MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  highlightColor: Colors.lime,
                  height: 35,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){},
                  child: Text("About"),
                ),
                SizedBox(width: 10,),
                MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  highlightColor: Colors.lime,
                  height: 35,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                  },
                  child: Text("Blog"),
                ),
                SizedBox(width: 10,),
                MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  highlightColor: Colors.lime,
                  height: 35,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){},
                  child: Text("contact us"),
                ),
                SizedBox(width: 15,),
                MaterialButton(color: Colors.pink,
                  height: 45,
                  hoverColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  onPressed: (){},
                  child: Text("Enroll now",style:Latobolditalic.copyWith(color: Colors.white))),

              ],
            )
          ],
        ),
      ),
    );
  }
}




class Mobiledesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        Text("Welcome Flutter community",style: Latobold.copyWith(color:Colors.white,fontSize: 25),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: (){},child: Text("Home",style: TextStyle(color: Colors.white),),hoverColor: Colors.blue,highlightColor: Colors.black,),
            SizedBox(width: 15,),
            Text("courcec",style: TextStyle(color: Colors.white),),
            SizedBox(width: 15,),
            Text("Blog",style: TextStyle(color: Colors.white),),
            SizedBox(width: 15,),
            Text("Contact us",style: TextStyle(color: Colors.white),),

          ],
        ),
      )
        ],
      ),
    );
  }
}
