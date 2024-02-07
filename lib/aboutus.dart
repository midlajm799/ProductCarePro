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
                )
                
                ),
                Container(
                  child: Text(
                    "At ProductCarePro, our primary focus is on ensuring customer satisfaction and product longevity.We take pride in offering top-notch repair services,maintenance plans,and more to meet our customer's diverse needs.\n\n\nOur team consists of dedicated professionals,each contributing unique skills and experiences,all aligned to deliver the highest standards of service.We collaborate seamlessly to ensure a seamless experience for our customers.\n\n\nProductCarePro's foundation is built upon core values and principles that guide our operations and interactions.Our commitment to quality and sustainability is unwavering.",
                  style:TextStyle(fontSize: Width*0.02),),
                  

                  

                ),
          ],
          



        ),
        
      ),
      );
   
  }
}
