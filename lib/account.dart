import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account ({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [Container(height: Height*0.2,width: Width*0.8,
              decoration:BoxDecoration(
                  color: Color(0xFFF1F1F1),borderRadius: BorderRadius.circular(50)
              )

          )


          ],
        ),
      ),
    );
  }
}