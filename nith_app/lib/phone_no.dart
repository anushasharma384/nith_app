import 'package:flutter/material.dart';
import 'otp.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                        "Phone Verification",
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
            "We need to register your phone before getting started!",
            style: TextStyle(
              color: Color.fromRGBO(143, 148, 251, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 0.3),
                          blurRadius: 20.0,
                        )
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            controller: countrycode,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                          )),
                      const SizedBox(
                        width: 20,
                        child: Text(
                          "|",
                          style: TextStyle(color: Colors.grey, fontSize: 35),
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.grey)),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 20),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OtpVerification()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(143, 148, 251, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Send OTP",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: Color.fromRGBO(143, 148, 251, 1),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
