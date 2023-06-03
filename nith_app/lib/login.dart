import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';


class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/background.png'),
                  fit: BoxFit.fill
                  ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: width * 0.14,
                    width: 80,
                    height: 200,
                    child:
                    FadeAnimation(1,Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/light-1.png')
                          )
                      ),
                    )),
                  ),
                  Positioned(
                    left: width * 0.34,
                    width: 80,
                    height: 135,
                    child:
                    FadeAnimation(1.3,Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/light-2.png')
                          )
                      ),
                    ))
                  ),
                  Positioned(
                    right: width * 0.07,
                    top: height * 0.01,
                    width: 80,
                    height: 150,
                    child:
                    FadeAnimation(1.5,Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Images/clock.png')
                          )
                      ),
                    ))
                  ),
                  Positioned(
                    child: FadeAnimation(1.6,Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Center(
                        child: Text(
                          "Login to NITH App",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  FadeAnimation(1.8,Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 0.3),
                          blurRadius: 20.0,
                          offset: Offset(0, 10)
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Color.fromARGB(255, 218, 217, 217)))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or Phone Number",
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(2,Container(
                    height: 50,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                       Color.fromRGBO(143, 148, 251, 1),
                       Color.fromRGBO(143, 148, 251, .6)
                      ]
                    )
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 50
                  ),
                  FadeAnimation(1.5,Text(
                    "Forgot Password?",
                     style: TextStyle(
                     color: Color.fromRGBO(143, 148, 251, 1),
                     fontWeight: FontWeight.bold,
                     ),
                    ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}