import 'package:flutter/material.dart';

class question extends StatefulWidget {
  const question({super.key});

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
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
                          child: Image.asset("assets/Images/question.png", height: 150, width: 150,),
                        ),
                        Text(
                          "Psychometric Questionnaire",
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
            SizedBox(
              height: height * 0.01,
              width: double.infinity,
            ),
            GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        padding: EdgeInsets.all(20),
                        children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/academic.png"),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Academic Problems",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/career.png"),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Career Issues",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/family.png"),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Family Problems",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/inferiority.png"),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Inferiority Complex",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/loneliness.png", height: 100,),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Loneliness Insecurities",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.3),
                                  blurRadius: 20.0,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/Images/relationship.png"),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Relationship Issues",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromRGBO(56, 58, 100, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]
            ),
                    ],
                  ),
                  ),

    );
  }
}