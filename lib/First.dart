import 'package:flutter/material.dart';
import 'package:sample/sign%20in.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 200),
            Image.asset(
              'assets/logo1.jpg',
              height: 250,
              width: 250,
            ),
            Stack(
              children: [
                Text(
                  'PRODUCT',
                  style: TextStyle(
                      color: Color(0x33383C72),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: Color(0x33383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(
                        color: Color(0xFF383C72),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                'CARE PRO.',
                style: TextStyle(
                    color: Color(0xFF383C72),
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                """Stay Covered,Stay Connected
                     With Us.""",
                style: TextStyle(color: Color(0xFF1E1E1E), fontSize: 15),
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
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
