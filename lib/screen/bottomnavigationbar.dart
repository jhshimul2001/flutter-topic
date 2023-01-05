
import 'package:flutter/material.dart';
import 'package:textfield/screen/utils/color.dart';
import 'package:textfield/screen/utils/styles.dart';

class DrawerBottomNavigationbar extends StatefulWidget {
  const DrawerBottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<DrawerBottomNavigationbar> createState() => _DrawerBottomNavigationbarState();
}

class _DrawerBottomNavigationbarState extends State<DrawerBottomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.COLOR_PRIMARY,
        title: Text("drawer and bottomnavigationvar",style:Latobold.copyWith(fontSize: 18,color: ColorResources.BLACK)),
        centerTitle: true,
      ),
    );
  }
}
