import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(bottom: 60),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Image.asset(
                'assets/logo2.jpg',
                height: 250,
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: TextFormField(
                    controller: emailcontroller,
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
                padding: const EdgeInsets.only(left: 60, right: 60, top: 15),
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: passwordcontroller,
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
                padding: const EdgeInsets.only(top:15),
                child: Text('forgot password?'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade900, // Set the button color to darkblue
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Add rounded corners
                    ),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: InkWell(
                  onTap: () {
                    // Add your functionality when the text is tapped
                    print('Sign up tapped!');
                    // Add navigation or other actions here
                  },
                  child: Text(
                    'Not have an account? Sign up',
                    style: TextStyle(
                      color: Colors.black, // Set the text color
                      decoration: TextDecoration.underline, // Add underline decoration
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
