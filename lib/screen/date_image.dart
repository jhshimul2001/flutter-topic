import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DateTimeImage extends StatefulWidget {
  const DateTimeImage({Key? key}) : super(key: key);

  @override
  State<DateTimeImage> createState() => _DateTimeImageState();
}

class _DateTimeImageState extends State<DateTimeImage> {
  String date="Select Date";
  TimeOfDay selectedTime = TimeOfDay.now();

  String fileName = "";
  File? file;
  final picker = ImagePicker();

  void _chooseCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  void _chooseGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("date and time"),
            centerTitle: true,
          ),
          backgroundColor: Colors.blueGrey,
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
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: () async {
                      DateTime? dateTime = await getDate(context);
                      String? day;
                      String? month;
                      String? year;
                      dateTime!.day < 10 ? day = '0${dateTime.day}' : day =
                      '${dateTime.day}';
                      dateTime.month < 10 ? month = '0${dateTime.month}' : month =
                      '${dateTime.month}';
                      year = '${dateTime.year}';
                      date = '$day-$month-$year';
                      setState(() {

                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Text(date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                    ),
                  ),

                  SizedBox(height: 20,),

                  InkWell(
                    onTap: () async {
                      _selectTime(context);
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Center(child: Text(
                          "${selectedTime.hour}:${selectedTime.minute}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,))),
                    ),
                  ),

                  SizedBox(height: 20,),


                  InkWell(
                    onTap: () async {
                     _chooseCamera();
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Center(child: Text("Capture",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,))),
                    ),
                  ),

                  SizedBox(height: 20,),

                  InkWell(
                    onTap: () async {
                    _chooseGallery();
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Center(child: Text("Choose from gallery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  file!=null ? Image.file(file! , height: 300, width: double.infinity, fit: BoxFit.cover,) : Container(),


                ],
              ),
            ),
          ),
        )
    );
  }












  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}



Future<DateTime?> getDate(BuildContext context) async {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2001),
    lastDate: DateTime(2100),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.blueAccent,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },

  );
}