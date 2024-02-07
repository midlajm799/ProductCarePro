import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';
import 'package:sample/newcomplaint.dart';

class YourComplaint extends StatelessWidget {
  const YourComplaint({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(height * 0.001),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height * .05,
                    width: width * .87,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: const Color.fromARGB(255, 221, 221, 221),
                          blurRadius: 1,
                          offset: Offset(.5, 1),
                        ),
                      ],
                      color: Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(height * .05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 7),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .001,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.home_filled,
                        size: 30,
                      ))
                ],
              ),
              SizedBox(height: height * .005),
              Container(
                padding: EdgeInsets.all(height * .03),
                height: height * .8,
                width: width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 237, 237, 237),
                  borderRadius: BorderRadius.circular(height * .03),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Complaints",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.06,
                          color: Color(0xFF3F4869)),
                    ),
                    SizedBox(
                      height: height * 0.014,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: height * .018),
                            padding: EdgeInsets.only(
                                left: height * .009,
                                top: height * .009,
                                right: height * .009,
                                bottom: height * .009),
                            height: height * .065,
                            width: width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  // offset: Offset(-1, -1),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(height * .004),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("No New"),
                                    Text("Complaints"),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "Status: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "NA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewComplaint()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(width * .7, height * .07),
                    maximumSize: Size(width * .7, height * .35),
                    backgroundColor: Color.fromARGB(255, 255, 170, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * .022))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                    ),
                    Text(
                      "New Complaint",
                      style: TextStyle(fontSize: width * .03),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * .005,
              )
            ],
          ),
        ),
      ),
    );
  }
}
