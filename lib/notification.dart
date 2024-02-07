import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * .18,
            width: width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 236, 236),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .01,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                // SizedBox(width: width*.008,),
                Text("Back",style: TextStyle(fontSize: width*0.05),)
              ],
            ),
          ),
          SizedBox(
            height: height * .009,
          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,right:250 ),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: height * .027),
                      ),
                    ),
                    SizedBox(
                      height: height * .055,
                    ),
             Expanded(
               child: ListView.builder(
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 itemCount: 2,
                 itemBuilder: (BuildContext context,int index) {
                 return  Padding(
                   padding: const EdgeInsets.only(right: 98.0,left: 50),
                   child: Container(
                     padding: EdgeInsets.only(left: width*.03),
                     margin: EdgeInsets.only(left: width * .03,bottom: height*.02),
                     height: height * .09,
                     width: width * .0,
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255, 220, 220, 220),
                       borderRadius: BorderRadius.circular(height * .01),
                     ),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Notification 1",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text("message",style: TextStyle(fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),
                 );
               },
               ),
             ),
          ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),);
          },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 68, 68, 68),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(height*.04))),
              child: Text("HOME",style: TextStyle(fontWeight: FontWeight.bold),),),
          SizedBox(height: height*.029,)
        ],
   ),
);
  
}
} 