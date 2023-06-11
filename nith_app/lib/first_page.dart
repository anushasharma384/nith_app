import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nith_app/Phone_no.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NITH App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          PhonePage()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Color.fromRGBO(140, 144, 231, 0.6),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.2,
            width: double.infinity,
          ),
          Container(
            width: width * 0.58,
            height: height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Images/nith-logo.png"), fit: BoxFit.fill)
            ),
          ),
          SizedBox(
            height: height * 0.1,
            width: double.infinity,
          ),
          Center(
            child: Text("NITH APP",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),),
          )
        ],
      )
    );
  }
}
