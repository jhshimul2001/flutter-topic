import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class createac extends StatefulWidget {
  const createac({Key? key}) : super(key: key);

  @override
  State<createac> createState() => _createacState();
}

class _createacState extends State<createac> {

  final _keyfrom = GlobalKey<FormState>();  // must be used in from


  bool isv = false;
  bool isve = false;



  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final newpasscontroller = TextEditingController();
  final repasscontroller = TextEditingController();

  //...........section dropdown..........

  List<String> items = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String dropdownvalue = 'Item 1';

//..............dropdown..............

  //......swich global variable assign..........
  bool isswich =false;
  bool ischange = true;



  Object? _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ischange ? Colors.white: Colors.grey,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.lightGreen,
                  Colors.blue,
                ],
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _keyfrom,
              child: ListView(
                children: [
                  Center(child: Text("Create Account", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.black),)),

                  SizedBox(height: 30,),

                  //..................Textfromfield and validator..............

                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: namecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your name";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.contact_page, color: Colors.amber,),
                      labelText: "Full name",
                      labelStyle: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your email address";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail, color: Colors.blue,),
                      labelText: "Email address",
                      labelStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: phonecontroller,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'[/\\]')),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your phone number";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.call, color: Colors.green,),
                      labelText: "Phone number",
                      labelStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  TextFormField(
                    obscureText: isv ? false : true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: newpasscontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          isv = !isv;
                        });
                      },
                          icon: Icon(
                              isv ? Icons.remove_red_eye : Icons.visibility_off),
                          color: Colors.blue),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  TextFormField(
                    obscureText: isve ? false : true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: repasscontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your confirm password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          isve = !isve;
                        });
                      },
                        icon: Icon(
                            isve ? Icons.remove_red_eye : Icons.visibility_off),
                        color: Colors.blue,),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "confirmed password",
                     // hintText: "enter your confirmed password",
                      labelStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  //..................Textfromfield and validator end.............


                  //...........dropdown..............

                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blueGrey,
                    ),
                    child: DropdownButton(
                        value: dropdownvalue,
                        hint: Text("select Item"),
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        items: items.map((String? item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(item!));
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownvalue = value!;
                          });
                        }),
                  ),


                  //...................dropdown end.............



                  //       expanded using in container...........

                  // SizedBox(height: 15,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         height: 20,
                  //         width: 20,
                  //         color: Colors.blue,
                  //       ),
                  //     ),
                  //     Expanded(
                  //       flex: 2,
                  //       child: Container(
                  //         height: 20,
                  //         width: 20,
                  //         color: Colors.grey,
                  //       ),
                  //     )
                  //   ],
                  // ),

                  //...............expanded using in container end...........



                  //................textfromfield validation and elavated button............
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {
                      if (_keyfrom.currentState!.validate()) {
                        // use the information provided
                      }
                    }, child: Text("Submit")
                    ),
                  ),


                  //................textfromfield validation and elavated button end............




                  //    SizedBox(height: 15,),
                  //  Container(
                  //   alignment: Alignment.center,
                  //   height: 50,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(50)),
                  //     color: Colors.indigo,
                  //   ),
                  //   child: Text("Login account",style: TextStyle(color: Colors.white,fontSize: 18),),
                  // ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already you have an account?"),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 70,
                        color: Colors.blueGrey,
                        child: TextButton(onPressed: (){
                        },
                          child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                        ),
                      )
                    ],
                  ),
                    ),
                  //...............switchbutton...............


                   Row(
                     children: [
                      Text("dark mode"),
                      Expanded(child: Container()),
                      Switch(
                          activeColor:  Colors.green,
                          activeTrackColor: Colors.cyan,
                          inactiveThumbColor: Colors.red,
                          inactiveTrackColor: Colors.grey.shade400,
                          value: isswich,
                          onChanged: (bool value){
                             setState(() {
                               isswich=!isswich;
                               ischange =!ischange;
                             });
                          }),
                    ],
                  ),

                  //..........................end switch button............


                  // ...........radio..............
                   Row(
                     children: [
                       Radio(
                           value: 0,
                           groupValue: _gender,
                           onChanged: (value){
                             setState(() {
                               _gender = value;
                             });
                       }),
                       Text("male")
                     ],
                   ),

                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _gender,
                          onChanged: (value){
                            setState(() {
                              _gender = value;
                            });
                          }),
                      Text("female")
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _gender,
                          onChanged: (value){
                            setState(() {
                              _gender = value;
                            });
                          }),
                      Text("others")
                    ],
                  )

                ],
              ),
            ),
          ),
        )
    );
  }
}




