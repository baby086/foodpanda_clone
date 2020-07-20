import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_clone/page/warpperHomePage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WapperHomePage()));
    });

    return Scaffold(
      body: Container(
        color: Color(0xFFD70F64),
        child: Stack(
          children: <Widget>[
            Center(
             child: Image.asset(
               'assests/splash_logo.png'
             ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: CupertinoTheme(
                  data: CupertinoTheme.of(context).copyWith(brightness: Brightness.dark),
                  child: CupertinoActivityIndicator()
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}