import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Animation/FadeAnimation.dart';
import 'package:pinput/pinput.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Phone_no.dart';
import 'home_page.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

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
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: width * 0.14,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/Images/light-1.png'))),
                        )),
                  ),
                  Positioned(
                      left: width * 0.34,
                      width: 80,
                      height: 135,
                      child: FadeAnimation(
                          1.3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Images/light-2.png'))),
                          ))),
                  Positioned(
                      right: width * 0.07,
                      top: height * 0.01,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                          1.5,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/Images/clock.png'))),
                          ))),
                  Positioned(
                    child: FadeAnimation(
                        1.6,
                        Container(
                          margin: EdgeInsets.only(top: 80),
                          child: Center(
                            child: Text(
                              "OTP Verification",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            FadeAnimation(
                1.5,
                Text(
                  "Enter the OTP sent to the registered mobile number!",
                  style: TextStyle(
                    color: Color.fromRGBO(143, 148, 251, 1),
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Pinput(
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FadeAnimation(
                      2,
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Verify the OTP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(143, 148, 251, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      )),
                  SizedBox(height: 35),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PhonePage()));
                      },
                      child: Text(
                        "Change Phone Number?",
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
