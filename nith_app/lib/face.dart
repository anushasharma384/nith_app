import 'package:flutter/material.dart';

class face_recog extends StatefulWidget {
  const face_recog({super.key});

  @override
  State<face_recog> createState() => _face_recogState();
}

class _face_recogState extends State<face_recog> {
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
                          child: Image.asset("assets/Images/face.png", height: 150, width: 150,),
                        ),
                        Text(
                          "Face Recognition",
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