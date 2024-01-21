import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';
import 'package:sample/sign%20in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Width,
        height: Height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                    height: Height / 4, child: Image.asset('assets/logo3.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'Name',
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
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
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
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'Phone',
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
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: TextFormField(obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'password',
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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 42, 145, 196),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      // Navigate to the sign-up screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
