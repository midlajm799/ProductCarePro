import 'package:flutter/material.dart';
import 'package:sample/Shop.dart';
import 'package:sample/aboutus.dart';
import 'package:sample/account.dart';
import 'package:sample/sign%20in.dart';
import 'package:sample/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        width: Width*.30,
        child: Column(
          children: [
            SizedBox(
              height: Height*0.10,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Account()));
              },
              child: Container(
                width: Width*0.22,
                height: Height*0.05,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(width: 40,),
                    Image.asset(
                      'assets/logo profile.png',
                      width: Width*0.030,
                      color: Colors.grey.shade800,
                    ),
                    SizedBox(
                      width: Width*0.005,
                    ),
                    Text('Account')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Height*0.010,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>aboutus()));
              },
              child: Container(
                width: Width*0.22,
                height: Height*0.05,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('About Us')],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Set elevation to 0 to remove shadows
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: ImageIcon(
              AssetImage('assets/menu.png'),
              color: Colors.black,
            ),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('assets/logobell.png'),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Add your functionality for the "Shop" button
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Shop()));
              },
              child: Container(
                width: Width*0.42,
                height: Height*0.15,
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Shop',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.shopping_cart_outlined,size:50,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Warranty" button
                print('Register Warranty button pressed');
              },
              child: Container(
                width: Width*0.42,
                height: Height*0.15,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register Warranty',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.settings_suggest_outlined,size: 50,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Complaint" button
                print('Register Complaint button pressed');
              },
              child: Container(
                width: Width*0.42,
                height: Height*0.15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 4, 46, 108),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register Complaint',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height:10,),
                      Icon(Icons.headset_outlined,size: 50,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
