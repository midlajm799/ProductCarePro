import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

class Warranty extends StatelessWidget {
  const Warranty({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.8,
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.only( bottomLeft: Radius.circular(height*.07),bottomRight: Radius.circular(height*.07))),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD9D22)),
                      ),
                      Text(
                        "Warranty",
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD9D22)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: height*.75,
                width: width,
                margin: EdgeInsets.only(left: height*.1,right: height*.1,top: height*.05,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    SizedBox(height: height * 0.014),
                    SizedBox(
                      height: height * .058,
                      width: width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFAFB),
                          hintText: 'name',
                          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                            borderSide: BorderSide(), // Remove the border
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.014),

                    SizedBox(height: height * 0.014),
                    Text(
                      "Product Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    SizedBox(height: height * 0.014),
                    SizedBox(
                      height: height * .058,
                      width: width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFAFB),
                          hintText: 'abc',
                          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.014),

                    SizedBox(height: height * 0.014),
                    Text(
                      "Product Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    SizedBox(height: height * 0.014),
                    SizedBox(
                      height: height * .058,
                      width: width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFAFB),
                          hintText: 'abc',
                          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.014),

                    SizedBox(height: height * 0.014),
                    Text(
                      "Product Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    SizedBox(height: height * 0.014),
                    SizedBox(
                      height: height * .058,
                      width: width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFAFB),
                          hintText: 'abc',
                          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                            borderSide: BorderSide(color: Colors.white12,), // Remove the border
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.014),
                    Text(
                      "Product Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    SizedBox(height: height * 0.014),
                    SizedBox(
                      height: height * .058,
                      width: width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFAFB),
                          hintText: 'name',
                          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                            borderSide: BorderSide(), // Remove the border
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.014),

                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewComplaint()));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFD9D22),
                          minimumSize: Size(width * .7, height * .065),
                          maximumSize: Size(width * .7, height * .35),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(height * .022))),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: height*.018),
                      ),
                    ),
                    // SizedBox(height: height*.005,)
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}