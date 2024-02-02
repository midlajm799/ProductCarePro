import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'homepage.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
      ),
    );
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: Height,
          width: Width,
          child: Column(children: [
            SizedBox(
              height: Height * 0.1,
            ),
            Center(
              child: Container(
                  height: Height / 3, child: Image.asset('assets/otp.jpg')),
            ),
            Container(
              margin: EdgeInsets.only(left: Width * 0.06, right: Width * .1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Otp verification',
                        style: TextStyle(fontSize: Height / 30),
                      ),
                    ],
                  ),
                  SizedBox(height: Height * 0.006),
                  Divider(
                    color: Colors.grey,
                    height: Height * 0.001,
                    thickness: 2,
                    indent: 2,
                    endIndent: 90,
                  ),
                  SizedBox(
                    height: Height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Enter the verification code that\nwe just send you!',
                        style: TextStyle(fontSize: Height / 60),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Height * .05,
                  ),
                  Pinput(
                    controller: pinController,
                    defaultPinTheme: defaultPinTheme,
                    focusNode: focusNode,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    // separatorB77uilder: (index) => const SizedBox(width: 8),
                    // validator: (value) {
                    //   return value == '2222' ? null : 'Pin is incorrect';
                    // },
                  ),
                  SizedBox(
                    height: Height * 0.009,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD70606),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    child: Text(
                      'Resent otp',
                      style: TextStyle(fontSize:Width*0.020, color: Color(
                          0xFF232323)),
                    ),
                  ),
                ],

              ),
            ),
          ]),
        ),
      ),
    );
  }
}
