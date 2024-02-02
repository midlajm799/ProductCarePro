import 'package:flutter/material.dart';
import 'package:sample/otp.dart';
import 'package:sample/sign%20in.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/logo1.jpg",
              height: height * .35,
              width: width * .7,
            ),
            Stack(
              children: [
                Text(
                  'PRODUCT',
                  style: TextStyle(
                      color: const Color(0x33383C72),
                      fontWeight: FontWeight.bold,
                      fontSize: height * .0399),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: const Color(0x33383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: height * .0399),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: const Color(0xFF383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: height * .0399),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Text(
                    'CARE PRO.',
                    style: TextStyle(
                        color: const Color(0xFF383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: height * .037),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .15,
            ),
            Text(
              """Stay Covered,Stay Connected
                   With Us.""",
              style: TextStyle(
                  color: const Color(0xFF1E1E1E),
                  fontSize: height * .016,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * .008,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange, // Set the button color to orange
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      height * .30), // Add rounded corners
                ),
              ),
              child: const Text(
                "Let's Go!",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: height * .023,
            ),
          ],
        ),
      ),
    );
  }
}
