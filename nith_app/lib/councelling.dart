import 'package:flutter/material.dart';

class councelling extends StatefulWidget {
  const councelling({super.key});

  @override
  State<councelling> createState() => _councellingState();
}

class _councellingState extends State<councelling> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(160, 163, 218, 1),
              ),
              child: Column(
                children: [
                  SafeArea(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image.asset("assets/Images/councelling.png", height: 150, width: 150,),
                        ),
                        Text(
                          "Councelling Appointment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
              width: double.infinity,
            ),
            Text(
              "Choose The Problem You are facing......",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1),
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}