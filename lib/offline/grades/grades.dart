import 'package:flutter/material.dart';
import 'grade_8_to_9/subjects_8_and_9.dart'; // Import the file for navigation.

class Grades extends StatefulWidget {
  const Grades({super.key});

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  List<String> grades = ["1 - 3", "4 - 7", "8 - 9", "10 - 12"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Subjects'),
        backgroundColor: const Color(0xFF002B5B),
        actions: [
          Row(
            children: [
              const Text('Powered by Bubble', style: TextStyle(fontSize: 10)),
              const SizedBox(width: 4),
              Image.asset('lib/assets/bubble_logo.png', height: 20, width: 20),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'lib/assets/education.png',
              height: 150,
              width: 150,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two columns
                childAspectRatio: 2.5,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: grades.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF002B5B),
                  ),
                  onPressed: () {
                    if (grades[index] == "8 - 9") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  const Subjects8And9(), // Navigate to the file
                        ),
                      );
                    }
                  },
                  child: Text(grades[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
