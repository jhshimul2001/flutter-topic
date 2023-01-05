
import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/styles.dart';


class Landingpage extends StatelessWidget {
  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flutter \nDevlopers",style: Latobold.copyWith(fontSize: 40,color: Colors.white),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("One of the reasons why Flutter developers have a high demand in organizations\n that work with Flutter is that being a framework that helps develop cross-platform\n applications, it helps organizations cut down on development costs and save time.",style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
            MaterialButton(color: Colors.white,
            height: 40,
            hoverColor: Colors.grey,
              splashColor: Colors.yellow[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                child: Text("Our cources",style: TextStyle(color: Colors.red,fontSize: 22),),
              ),
            )
          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("images/background_flutter.jpg",width:width,),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context,constraints){
          if(constraints.maxWidth > 800){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width/2),
          );
          }
           else{
            return Column(
              children:pageChildren(constraints.biggest.width),
            );
          }
        }
    );
  }
}
