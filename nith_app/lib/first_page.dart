import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nith_app/Phone_no.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SplashScreen(
      gradientBackground: LinearGradient(
        colors: [
          Color.fromRGBO(163, 167, 249, 1),
          Color.fromRGBO(140, 144, 231, 0.6)
        ]
      ),
      seconds: 3,
      navigateAfterSeconds: new PhonePage(),
      title: new Text('NITH APP',textScaleFactor: 4,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        )
      ),
      image: Image.asset('assets/Images/nith-logo.png',
      width: width * 0.9,
      height: height * 0.5,
      fit: BoxFit.fill,),
      loadingText: Text("Loading",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
      photoSize: 100.0,
      loaderColor: Colors.black,
    );
  }
}

