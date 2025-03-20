import 'package:flutter/material.dart';
import 'grades/grades.dart'; // Import your Grades class.

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigates back to the previous page
            },
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true, // Ensures the title is properly centered
          backgroundColor: const Color(0xFF1976D2), // Nice blue color
          elevation: 5.0,
          actions: [ Padding( padding: const EdgeInsets.only(right: 8.0), child: Row( children: [ const Text( 'Powered by Bubble', style: TextStyle(fontSize: 10, color: Colors.white), ), const SizedBox(width: 4), Image.asset( 'lib/assets/bubble_logo.png', height: 20, width: 20, ), ], ), ), ],
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the Grades screen.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Grades()),
                );
              },
              child: const Text("Grade"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Placeholder for Subject button functionality.
              },
              child: const Text("Subject"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Placeholder for Videos button functionality.
              },
              child: const Text("Videos"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Placeholder for Quizzes button functionality.
              },
              child: const Text("Quizzes"),
            ),
          ],
        ),
      ),
    );
  }
}
