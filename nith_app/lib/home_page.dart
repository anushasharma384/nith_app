import 'package:flutter/material.dart';
import 'package:nith_app/councelling.dart';
import 'package:nith_app/face.dart';
import 'package:nith_app/question.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(143, 148, 251, 1),
                image: DecorationImage(image: AssetImage("assets/Images/cloud_bg.png"), alignment: Alignment.centerLeft),
              ),
              child: Column(
                children: [
                  SafeArea(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                            child: Image.asset("assets/Images/menu.png", height: 35, width: 35,),
                          ),
                        ),
                        Text(
                          "Welcome \nAnusha",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 30),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29.5)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                              icon: Image.asset("assets/Images/search.png", height: 35, width: 35,)
                            ),
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
              "This app will keep a track of depression and issues of the students through the following means",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: height * 0.01,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, 0.3),
                    blurRadius: 20
                  )
                ]
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset("assets/Images/question.png", height: 250, width: 250,)
                  ),
                  Center(
                    child: Text(
                      "Psychometric \nQuestionnaire",
                      style: TextStyle(
                        color: Color.fromRGBO(56, 58, 100, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const question()));
                          },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(143, 148, 251, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, 0.3),
                    blurRadius: 20
                  )
                ]
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset("assets/Images/face.png", height: 250, width: 250,)
                  ),
                  Center(
                    child: Text(
                      "Face Recognition",
                      style: TextStyle(
                        color: Color.fromRGBO(56, 58, 100, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const face_recog()));
                          },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(143, 148, 251, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, 0.3),
                    blurRadius: 20
                  )
                ]
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset("assets/Images/councelling.png", height: 250, width: 250,)
                  ),
                  Center(
                    child: Text(
                      "Schedule Councelling \nAppointment",
                      style: TextStyle(
                        color: Color.fromRGBO(56, 58, 100, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const councelling()));
                          },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(143, 148, 251, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}