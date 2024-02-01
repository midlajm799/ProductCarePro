import 'package:flutter/material.dart';
import 'package:sample/otp.dart';
import 'package:sample/sign%20in.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(bottom: 60),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Height*0.1),
            Image.asset(
              'assets/logo1.jpg',
              height: Height*0.5,
              width: Width*0.65,
            ),
            Stack(
              children: [
                Text(
                  'PRODUCT',
                  style: TextStyle(
                      color: Color(0x33383C72),
                      fontWeight: FontWeight.bold,
                      fontSize: Height*0.038),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: Color(0x33383C72),
                        fontWeight: FontWeight.bold,
                        fontSize:Height*0.038),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: Color(0xFF383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: Height*0.038),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:  5,top: 50),
                  child:
                  Text(
                    'CARE PRO.',
                    style: TextStyle(
                        color: Color(0xFF383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: Height*0.036),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Text(
                """Stay Covered,Stay Connected
                   With Us.""",
                style: TextStyle(color: Color(0xFF1E1E1E), fontSize: Height*0.017),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Set the button color to orange
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Add rounded corners
                ),
              ),
              child: Text(
                "Let's Go!",
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
