import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350, // Set the width of the container
          height: 120, // Set the height of the container
          decoration:BoxDecoration(color: Colors.red.shade900, // Set the color of the container
            borderRadius: BorderRadius.circular(15.0), // Curve the corners
          ),
            alignment: Alignment.topLeft, // Align the text to the top-left
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Add some padding
              child: Text(
                'Shop',
                style: TextStyle(
                  color: Colors.white, // Set the text color
                  fontSize: 18, // Set the font size
                  fontWeight: FontWeight.bold, // Set the font weight
                ),
              ),
            )
        ),

      ),











    );
  }
}
