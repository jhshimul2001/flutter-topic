
import 'package:flutter/material.dart';

class pass extends StatefulWidget {
  const pass({Key? key}) : super(key: key);

  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> {
  bool isvisibility  = false;
  bool isvisi = false;
  final passwordcontroller = TextEditingController();
  final passwordscontroller = TextEditingController();
  late String passnew  = passwordcontroller.text.isEmpty? "write a new password" : passwordcontroller.text;
  late String repass  = passwordscontroller.text.isEmpty? "write a re password" : passwordscontroller.text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.green,
                Colors.blue,
              ],
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Reset Password",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.black),)),
                SizedBox(height: 30,),
                TextField(
                  obscureText: isvisi ? false : true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        isvisi = !isvisi;
                      });
                    }, icon: Icon(isvisi ?  Icons.remove_red_eye : Icons.visibility_off),),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Confirmed password",
                      labelStyle: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                    border: OutlineInputBorder(

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: isvisibility ? false : true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordscontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        isvisibility = !isvisibility;
                      });
                    }, icon: Icon(isvisibility ?  Icons.remove_red_eye : Icons.visibility_off),),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "re-password",
                      labelStyle: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                    border: OutlineInputBorder(

                    ),
                  ),
                ),
                SizedBox(height: 5,),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    print("click");
                    String password = passwordcontroller.text;
                    String passwords = passwordscontroller.text;
                    print(password);
                    print(passwords);

                    setState(() {
                     passnew = passwordcontroller.text;
                     repass = passwordscontroller.text;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.indigoAccent,
                    ),
                    child: Text("Login account",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ),
                SizedBox(height: 5,),
                Text("new password : $passnew"),
                Text("re-password : $repass"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

