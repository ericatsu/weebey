import 'package:flutter/material.dart';
import 'package:weebey/meta/views/splash_screen/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily:'Montserrat'
      ),
      home: SplashView,
    );
  }
}

