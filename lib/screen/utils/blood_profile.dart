
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/color.dart';

// ...................blood profile design.......................

class pofile extends StatefulWidget {
  const pofile({Key? key}) : super(key: key);

  @override
  State<pofile> createState() => _pofileState();
}

class _pofileState extends State<pofile> {
  final Pages = [
    // BloodPost(),
    // BloodSearch(),
    // Home(),
    // bloodRequest(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:ListView(
            children: [

              //---------------------Picture---------
              Stack(
                children:[
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors:[Colors.redAccent,Colors.red,Colors.pink],
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 85,left: 30),
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white,width: 3,),
                              color: Colors.black,
                              image: DecorationImage(
                                image: NetworkImage("https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=ovIQ5GPurLd3mOUj82jB9v-bjGZ8updgy1ACaHMeEC0=",),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 75,left: 20),
                        child: Column(
                          children: [
                            Text("Michel Goung",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text("Apps Developer",style: TextStyle(fontSize: 20,color: Colors.grey),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //-------------------------call messege mail whatapp -------------

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Blood Group",style: TextStyle(color: Colors.black,fontSize: 25),),
                      Text("A+",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),SizedBox(width: 15,),
                  Container(
                    height: 50,
                    width: 3,
                    color: Colors.black,
                  ),SizedBox(width: 15,),
                  Column(
                    children: [
                      Text("Donate Times",style: TextStyle(color: Colors.black,fontSize: 25),),
                      Text("5X",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){

                        }, icon: Image.asset('images/phone-call.png'),
                      ),
                      Text("Call",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){

                        }, icon: Image.asset('assets/images/whatsapp.png'),
                      ),
                      Text("Whatapp",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){

                        }, icon: Image.asset('assets/images/gmail.png'),
                      ),
                      Text("email",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){

                        }, icon: Image.asset('assets/images/message.png'),
                      ),
                      Text("Message",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(
                  Icons.smartphone_outlined,
                ),
                title: Text("Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("01863145253",style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(
                  Icons.email_outlined,
                ),
                title: Text("Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("iftekharhossain566577@gmail.com",style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(
                  Icons.my_location_outlined,
                ),
                title: Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("Dhaka Bangladesh",style: TextStyle(fontSize: 16)),
              ),ListTile(
                leading: Icon(
                  Icons.date_range_outlined,
                ),
                title: Text("Last Donate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("01/09/2020",style: TextStyle(fontSize: 16),),
              ),

            ],
          ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
          color: Colors.indigo,
          buttonBackgroundColor: ColorResources.RED,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),

          onTap: (index){
            setState(() {
             // _page = index;
            });
          },
          items: [
            Icon(
              Icons.post_add_outlined,color: Colors.white,
            ),
            Icon(
              Icons.search,color: Colors.white,
            ),
            Icon(
              Icons.home_outlined,color: Colors.white,
            ),
            Icon(
              Icons.person_add_alt_outlined,color: Colors.white,
            ),
            Icon(Icons.person,color: Colors.white,),
          ],
        ),
      )
    );
  }
}



