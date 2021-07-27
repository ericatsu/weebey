import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weebey/app/shared/color.dart';
import 'package:weebey/app/shared/dimensions.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vSizedBox3,
          vSizedBox2,
          Container(
            color: Colors.red,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(EvaIcons.arrowIosBackOutline, color: Colors.white,))
              ],
            ),
          ),
          vSizedBox4,
          Container( color: bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text("Hey there!",
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w900,
                 color: whiteColor
               ),),
                Text("Welcome to the Party!",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: whiteColor
                  ),),
                Text("Fill in your details.",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: whiteColor
                  ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
