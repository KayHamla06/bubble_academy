import 'package:flutter/material.dart';
import 'grades/grades.dart'; // Import your Grades class.

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), backgroundColor: Colors.blue),
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
