

import 'package:flutter/material.dart';
import 'package:textfield/screen/from_textfieldfrom.dart';

import 'package:textfield/screen/pass.dart';

class Logincontact extends StatefulWidget {
  const Logincontact({Key? key}) : super(key: key);

  @override
  State<Logincontact> createState() => _LogincontactState();
}

class _LogincontactState extends State<Logincontact> {
  String savepassword = "password empty";
  bool isvisible  = false;
  bool ischeck = false;
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  late String useremail = emailcontroller.text.isEmpty ? "example@12gmail.com" : emailcontroller.text;
  late String userpass = passcontroller.text.isEmpty ? "123455": passcontroller.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.greenAccent,
                Colors.blue,
              ],
            )
        ),
        child: ListView(
          children: [Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("Login Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.black),)),
                  SizedBox(height: 50,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail),
                      labelText: "Email address",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: isvisible ? false : true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passcontroller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      }, icon: Icon(isvisible ?  Icons.remove_red_eye : Icons.visibility_off),),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "password",
                      border: OutlineInputBorder(

                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                         controlAffinity: ListTileControlAffinity.leading,
                          title: Text("save password",style: TextStyle(fontSize: 15),),
                          value: ischeck,
                          onChanged: (value){
                           setState(() {
                             ischeck = value!;
                             print(ischeck);
                             savepassword = value? passcontroller.text:"password empty";
                           });
                          },

                      ),
                      ),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => pass()));
                      }, child: Text("forgot password"))
                    ],
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {
                      print("click");
                      String email = emailcontroller.text;
                      String password = passcontroller.text;
                      print(email);
                      print(password);

                      setState(() {
                        useremail = emailcontroller.text;
                        userpass = passcontroller.text;
                        emailcontroller.clear();
                        passcontroller.clear();


                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.indigo,
                      ),
                      child: Text("Login account",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Email : $useremail"),
                  Text("password : $userpass"),
                  Text("save password : $savepassword"),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("do you have an account?"),
                           SizedBox(width: 10,),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => createac()));
                          }, child: Text("Sign up"))
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
    ],
        ),
      ),
    );
  }
}
