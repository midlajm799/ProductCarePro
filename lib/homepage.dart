import 'package:flutter/material.dart';
import 'package:sample/Shop.dart';
import 'package:sample/sign%20in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () { 
                // Add your functionality for the "Shop" button
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Warranty" button
                print('Register Warranty button pressed');
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Register Warranty',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Complaint" button
                print('Register Complaint button pressed');
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 4, 46, 108),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Register Complaint',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
