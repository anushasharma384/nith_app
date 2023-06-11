import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'phone_no.dart';
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

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: height * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
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
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Images/light-1.png'))),
                  ),
                ),
                Positioned(
                    left: width * 0.34,
                    width: 80,
                    height: 135,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Images/light-2.png'))),
                    )),
                Positioned(
                    right: width * 0.07,
                    top: height * 0.01,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Images/clock.png'))),
                    )),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: const Center(
                      child: Text(
                        "OTP Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "Enter the OTP sent to the registered mobile number!",
            style: TextStyle(
              color: Color.fromRGBO(143, 148, 251, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Pinput(
                  length: 6,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(143, 148, 251, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Verify the OTP",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PhonePage()));
                    },
                    child: const Text(
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
    ));
  }
}
