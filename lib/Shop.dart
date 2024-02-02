import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/sign%20in.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFCDC95),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: height * .262,
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/appbarrr.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        const Text("HOME"),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: width * .007,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              //product side
              Container(
                height: height * .7,
                width: width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(10))),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        "Featured Products",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * .015,
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: height * .285,
                                    width: width * .4,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF8F8F9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: height * .038,
                                                width: width * .07,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          height * .02),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  " 50%\n OFF",
                                                  style: TextStyle(
                                                      fontSize: height * .01,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite,
                                                size: height * .02,
                                                color: Color(0xFF767677),
                                              )
                                            ],
                                          ),
                                          Center(
                                            child: Image.asset(
                                              "assets/sanitary.jpg",
                                              height: height * .15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          Text(
                                            "CUFF HEALTH FAUCET",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * .012),
                                          ),
                                          SizedBox(
                                            height: height * .001,
                                          ),
                                          Text(
                                            "₹5340.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * .012),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Text(
                        "Popular Products",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * .009,
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: height * .285,
                                    width: width * .4,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF8F8F9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: height * .038,
                                                width: width * .07,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          height * .02),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  " 50%\n OFF",
                                                  style: TextStyle(
                                                      fontSize: height * .01,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite,
                                                size: height * .02,
                                                color: Color(0xFF767677),
                                              )
                                            ],
                                          ),
                                          Center(
                                            child: Image.asset(
                                              "assets/sanitary.jpg",
                                              height: height * .15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          Text(
                                            "CUFF HEALTH FAUCET",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * .012),
                                          ),
                                          SizedBox(
                                            height: height * .001,
                                          ),
                                          Text(
                                            "₹5340.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: height * .012),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
