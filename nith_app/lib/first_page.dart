import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nith_app/login.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
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
          Color.fromRGBO(143, 148, 251, 1),
          Color.fromRGBO(143, 148, 251, .6)
        ]
      ),
      seconds: 3,
      navigateAfterSeconds: new HomePage(),
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

