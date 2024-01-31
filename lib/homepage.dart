import 'package:flutter/material.dart';
import 'package:sample/Shop.dart';
import 'package:sample/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));
              },
              child: Container(
                width: 180,
                height: 40,
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
                      width: 25,
                      color: Colors.grey.shade800,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Account')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
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
            icon: const ImageIcon(
              AssetImage('assets/menu.png'),
              color: Colors.black,
            ),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
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
                    context, MaterialPageRoute(builder: (context) => const Shop()));
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Warranty" button
                print('Register Warranty button pressed');
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Register Warranty',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some space between the containers
            InkWell(
              onTap: () {
                // Add your functionality for the "Register Complaint" button
                print('Register Complaint button pressed');
              },
              child: Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 46, 108),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Register Complaint',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
