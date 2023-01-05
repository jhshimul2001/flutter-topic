
import 'package:flutter/material.dart';
import 'package:textfield/project/cource.dart';
import 'package:textfield/screen/utils/styles.dart';

class live extends StatefulWidget {
  const live({Key? key}) : super(key: key);

  @override
  State<live> createState() => _liveState();
}

class _liveState extends State<live> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("live class"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://schools.aglasem.com/wp-content/uploads/2020/03/Delhi-Live-Classes-min.jpg")
          )
        ),

          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Text("Live clases",style: Latobold.copyWith(fontSize: 30),),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>cource()));
                },child: Image.asset("assets/icon/icons8-live-stream-64.png"),)
              ],
            ),
          )
        )
      ),
    );
  }
}
