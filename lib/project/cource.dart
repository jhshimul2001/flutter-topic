import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/styles.dart';



class cource extends StatefulWidget {
  const cource({Key? key}) : super(key: key);

  @override
  _courceState createState() => _courceState();
}


class _courceState extends State<cource> {
  final Textcontroller = TextEditingController();

  Widget build(BuildContext context) {


        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blueGrey,
                      Colors.blue,
                    ],
                  )
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/icon/icons8-menu-48.png"),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue, width: 0.9),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/shimul.jpg",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: Latobold.copyWith(fontSize: 22),
                        ),
                        Text(
                          "Juvaid hasan",
                          style: Latobold.copyWith(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width/1.4,
                            child: TextField(
                              controller: Textcontroller,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: ("Search here"),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Image.asset(
                            "assets/icon/codec.png",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose Subjects",
                          style: Latobold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  "assets/images/flutter_pic.png",fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("flutter",style: Latobold)
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 170,
                                decoration: BoxDecoration(

                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  "assets/images/block_chain.png",fit: BoxFit.cover,

                                ),
                              ),
                              Text("Blockchain",style: Latobold,)
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(

                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  "assets/images/full-stack-web-developer.jpg",

                                ),
                              ),
                              Text("Full stack \n web devloper",style: Latobold,)
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  "assets/images/Laravel.png",
                                ),
                              ),
                              Text("Laravel",style: Latobold,)
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  "assets/images/App-development.jpg",fit: BoxFit.cover,
                                ),
                              ),
                              Text("App devlopement",style: Latobold,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Live Classes",
                          style: Latobold.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/shamim baya.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "senior devloper at",
                                style: Latobold),
                              Text(
                                "Next page company",
                                style: Latobold),
                              Text("ltd",style: Latobold,),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/helal_sir.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Senior Teacher at\n"
                                    "feni computer\n"
                                     "Institute",
                                style: Latobold,),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/humayun_kabir_sir.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Ex techer shaheen\n"
                                  "acadeny school\n"
                                  "and college",
                                style: Latobold),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/procoder_bd.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                  "web devloper and\n"
                                      "Youtuber\n",
                                  style: Latobold),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/tamim_shariar_sir.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                  "computer engineer \n"
                                      "and Youtuber \n"
                                  "and writter",
                                  style: Latobold),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/anisul_islam.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                  "computer engineer \n"
                                      "and Youtuber \n"
                                      "and writter",
                                  style: Latobold),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/jankar_mahbub vhai.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                      "web devloper\n"
                                      "and Youtuber \n"
                                      "and writter",
                                  style: Latobold),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/Hasin_haider_vhai.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                     "web devloper\n"
                                      " Teacher \n",
                                  style: Latobold),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset(
                                      "assets/images/rabbil.jpg",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                      "App devloper\n"
                                      "and Youtuber \n"
                                      "also Teacher \n",
                                  style: Latobold),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}


