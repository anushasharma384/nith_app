import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nith_app/Phone_no.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NITH App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          const PhonePage()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      color: Color.fromRGBO(143, 148, 251, 1),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.25,
            width: double.infinity,
          ),
          Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Images/nith-logo.png"), fit: BoxFit.fill)
            ),
          ),
          SizedBox(
            height: height * 0.05,
            width: double.infinity,
          ),
          const Center(
            child: Text("NITH APP",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),),
          )
        ],
      )
    ));
  }
}
