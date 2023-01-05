import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/color.dart';

class profiledemo extends StatelessWidget {
  const profiledemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [Column(
              children: [
                Container(
                  height: 310,
                  width: MediaQuery.of(context).size.width,
                  color:ColorResources.COLOR_PRIMARY,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back,size: 20,color:Colors.white,),

                            Text('Profile',style: TextStyle(color: Colors.white,fontSize: 20),),
                            Icon(Icons.settings,size: 20,color: Colors.white,),
                          ],
                        ),
                      ),
                      Column(children: [
                        SizedBox(height: 10,),
                        Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                border: Border.all(color: Colors.white,width: 2)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              child: Image.asset("assets/images/shimul.jpg",fit: BoxFit.cover,),

                            )

                        ),
                        Text("Juvaid hasan shimul",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("junior flutter devloper", style: TextStyle(color: Colors.white,fontSize: 14),),
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("1000 follwers", style: TextStyle(color:Colors.white),),
                              Container(
                                height: 50,
                                width: 1.5,
                                color: Colors.grey,
                              ),
                              Text("1200 following", style: TextStyle(color:Colors.white),),
                            ],
                          ),
                        )
                      ],)
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.mail,color: Colors.amber,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email"),
                                Text("juvaid122@gmail.com")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone,color: Colors.green,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("phone"),
                                Text("01840171930")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icon/twitter.png",height: 20,width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email"),
                                Text("juvaid122@gmail.com"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icon/facebook.png",height: 20,width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("faceboook"),
                                Text("juvaid hasan shimul"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ),
                    ],

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle,color: Colors.blue,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("contact"),
                                Text("01840171930"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ),
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
