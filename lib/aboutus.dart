import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: Height * 0.2,
                width: Width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    SizedBox(
                      width: Width * 0.02,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                    Text(
                      "Back",
                      style: TextStyle(fontSize: Height * 0.025),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
