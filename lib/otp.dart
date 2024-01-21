import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: Colors.white,
      body: Container(
        height: Height,
        width: Width,
        child: Column(
            children: [
              SizedBox(height: Height*0.1,),
        Center(
          child: Container(
              height: Height / 3, child: Image.asset('assets/otp.jpg')),
        ),
              Row(
                children: [
                  Text('Otp verification',style: TextStyle(fontSize: Height/30),),
                ],
              ),
      ]







        ),
      ),







    );
  }
}
