import 'package:flutter/material.dart';

class Construction2 extends StatelessWidget {
  const Construction2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Resized and centered image
            Image.asset(
              'lib/assets/construction2.jpg',
              height: 500, // Adjusted size
              width: 500,
            ),
            const SizedBox(height: 20),
            // Fun and engaging centered text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  Text(
                    "Almost there,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent, // Fun color
                    ),
                  ),
                  Text(
                    "young scholars!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent, // Fun color
                    ),
                  ),
                  Text(
                    "BubbleAcademy is getting ready for you - just a little more patience!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Centered button at the bottom
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigates back to the main page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Bright and fun color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Rounded edges
                ),
                elevation: 5.0,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Back to Main Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
