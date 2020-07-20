import 'package:flutter/material.dart';
import 'package:food_panda_clone/page/drawerPage.dart';
import 'package:food_panda_clone/page/homePage.dart';

class WapperHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerPage(),
          HomePage(),
        ],
      ),
    );
  }
}