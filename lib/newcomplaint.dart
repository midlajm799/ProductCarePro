import 'package:flutter/material.dart';

class NewComplaint extends StatelessWidget {
  const NewComplaint({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: height * .12,
                bottom: height * .015,
                left: height * .03,
                right: height * .03),
            padding: EdgeInsets.all(height * .02),
            height: height * .66,
            width: width,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEF),
              borderRadius: BorderRadius.circular(height * .03),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * .05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF3F4869),
                      ),
                    ),
                    Text(
                      "NEW COMPLAINT",
                      style: TextStyle(
                        color: Color(0xFF3F4869),
                        fontWeight: FontWeight.bold,fontSize: width*0.06
                      ),
                    ),
                  ],
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
                      labelText: 'name',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                        borderSide: BorderSide.none, // Remove the border
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.014),
                Text(
                  "Order Number:",
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
                      labelText: '0000-0000-0000',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                        borderSide: BorderSide.none, // Remove the border
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.014),
                Text(
                  "Purchased Date:",
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
                      hintText: 'dd/mm/yyyy',
                      hintStyle: const TextStyle(
                          height: 3, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Add curved edges
                        borderSide: BorderSide.none, // Remove the border
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
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFCFAFB),
                    hintText: 'Write your complaint here..',
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Add curved edges
                      borderSide: BorderSide.none, // Remove the border
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewComplaint()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFD9D22),
                minimumSize: Size(width * .7, height * .065),
                maximumSize: Size(width * .7, height * .35),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(height * .022))),
            child: Text(
              "Register",
              style: TextStyle(fontSize: height * .018),
            ),
          ),
          SizedBox(
            height: height * .005,
          )
        ],
      ),
    );
  }
}
