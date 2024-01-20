import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Height= MediaQuery.of(context).size.height;
    final Width= MediaQuery.of(context).size.height;
    return Scaffold( backgroundColor: Colors.white,
      body: Container(width: Width,height: Height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                  height: Height/3,
                  child: Image.asset('assets/logo3.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelText: 'Email',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(10.0), // Add curved edges
                      borderSide: BorderSide.none, // Remove the border
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






