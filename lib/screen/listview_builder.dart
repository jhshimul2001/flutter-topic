import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:textfield/screen/model/student.dart';
import 'package:url_launcher/url_launcher.dart'as launcher;

class Listviewdemo extends StatefulWidget {
  const Listviewdemo({Key? key}) : super(key: key);

  @override
  State<Listviewdemo> createState() => _ListviewdemoState();
}

class _ListviewdemoState extends State<Listviewdemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("list view demo"),
            centerTitle: true,
          ),
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
            child: ListView.builder(
                itemCount: contactlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person, color: Colors.blue,),
                    title: Text(contactlist[index].name, style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    subtitle: Text(contactlist[index].phone),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: (){
                            _makesms("sms://${contactlist[index].phone}");
                           // _makeSms(contactlist[index].email);
                          },
                          icon: Icon(Icons.sms,color: Colors.amber,),
                        ),
                        IconButton(
                          onPressed: (){
                            _makeemail(contactlist[index].email);
                          },
                          icon: Icon(Icons.email,color: Colors.blue,),
                        ),
                        IconButton(
                          onPressed: (){
                            setState(() {
                           // FlutterPhoneDirectCaller.callNumber(contactlist[index].phone);
                            //  _makePhoneCall(contactlist[index].phone);
                              _makePhoneCall("tel://${contactlist[index].phone}");
                            });
                          },
                          icon: Icon(Icons.call,color: Colors.green,),
                        ),
                      ],
                    )
                  );
                }

                ),
          ),
        )
    );
  }

  void _makeEmail(String email) {}
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: "+88${phoneNumber}",
  );
  await launcher.launchUrl(launchUri);
}


Future<void> _makesms(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'sms',
    path: "+88${phoneNumber}",
  );
  await launcher.launchUrl(launchUri);
}



Future<void> _makeemail(String email) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: "${email}",
      query: encodeQueryParameters(<String, String>{
    'subject': 'Example Subject & Symbols are allowed!',
  }),
);
  await launcher.launchUrl(launchUri);
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
// // ···
// final Uri emailLaunchUri = Uri(
//   scheme: 'mailto',
//   path: 'smith@example.com',
//   query: encodeQueryParameters(<String, String>{
//     'subject': 'Example Subject & Symbols are allowed!',
//   }),
// );