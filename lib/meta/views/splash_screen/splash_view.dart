import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weebey/app/shared/color.dart';
import 'package:weebey/meta/views/auth/signup_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  @override
  void initState() {
    Timer(Duration(seconds: 2),
    () => Navigator.pushReplacement(context, PageTransition(
        child: SignUpView(), type: PageTransitionType.rightToLeft))
    );
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text("WeeBey",
           style: TextStyle(
             fontSize: 50,
             fontWeight: FontWeight.w900,
             color: whiteColor
           ),)
          ],
        ),
      ),
    );
  }
}
