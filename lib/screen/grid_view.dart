
import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    var cw = MediaQuery.of(context).size.width;
    var ch = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            width: cw,
          child: GridView.count(crossAxisCount: 3,
          crossAxisSpacing: 3,
            mainAxisSpacing: 5,
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(height: 10,),
                    Center(child: Text("Account"),)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
