import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weebey/app/shared/color.dart';
import 'package:weebey/app/shared/dimensions.dart';
import 'package:weebey/meta/views/auth/login_view.dart';

class SignUpView extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox3,
            vSizedBox1,
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: () {},
                      icon: Icon(
                        EvaIcons.arrowIosBackOutline, color: Colors.white,))
                ],
              ),
            ),
            vSizedBox4,
            Container(color: bgColor,
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
            ),
            vSizedBox3,
            vSizedBox1,
            Container(
              child: Column(
                children: [
                  vSizedBox1,
                  stylishTextField(
                    "Name",nameController ),
                  vSizedBox1,
                  stylishTextField(
                      "Email",emailController ),
                  vSizedBox1,
                  stylishTextField(
                      "Password",passwordController ),
                  RichText(text: TextSpan(
                   children: <TextSpan>[
                     TextSpan(
                       text: "Already have an account? ",
                       style: TextStyle(
                         color: textColor,
                         fontWeight: FontWeight.w700,
                         fontFamily: "Montserrat"
                       ),
                     ),
                     TextSpan(
                       text: "Login",
                       recognizer: TapGestureRecognizer()..onTap =
                       () {
                         Navigator.pushReplacement(
                           context,
                           PageTransition(
                             child: LoginView(),
                             type: PageTransitionType.rightToLeft
                           )
                         );
                       },
                       style: TextStyle(
                           color: textColor,
                           decoration: TextDecoration.underline,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           fontFamily: "Montserrat"
                       ),
                     ),
                   ]
                  )
                  ),
                  vSizedBox2,
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Montserrat"
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            vSizedBox4,
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  stylishTextField(String text, TextEditingController textEditingController){
    return TextField(
      controller: textEditingController,
      style: TextStyle(color: Colors.white, fontSize: 18.0),
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: () {},
            icon: Icon(EvaIcons.backspace, color: textColor,)
        ),
        filled: true,
        hintText: text,
        hintStyle: TextStyle(color: textColor, fontSize: 14),
        fillColor: bgColor,
        border: new OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            const Radius.circular(15.0),
          )
        )
      ),
    );
}
}

