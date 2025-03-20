import 'package:flutter/material.dart';

class Construction extends StatefulWidget {
  final int grade;

  const Construction({super.key, required this.grade});

  @override
  State<Construction> createState() => _ConstructionState();
}

class _ConstructionState extends State<Construction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Centered image with adjusted size
            Image.asset(
              'lib/assets/construction.jpg',
              height: 500,
              width: 500,
            ),
            const SizedBox(height: 20),
            // Centered ladder-like text with better alignment and spacing
            Text(
              "Don't worry,",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "Grade ${widget.grade} students!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "Your time will come!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            Text(
                  "Soon, you'll get to experience the amazing BubbleAcademy app!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, // Fun color touch
                  ),
                ),
            const SizedBox(height: 30),
            // Centered button at the bottom
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigates back to the main page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
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
