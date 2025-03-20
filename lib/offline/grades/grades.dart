import 'package:bubble_academy/offline/construction2.dart';
import 'package:flutter/material.dart';
import 'grade_8_to_9/subjects_8_and_9.dart'; // Import the file for navigation.

class Grades extends StatefulWidget {
  const Grades({super.key});

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  final List<String> grades = ["1 - 3", "4 - 7", "8 - 9", "10 - 12"];

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
          'Grades',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/education.png',
                  height: 250, // Adjusted size for better layout
                  width: 250,
                ),
                const SizedBox(height: 12),
                const Text(
                  "Select your Grade to explore subjects!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two columns
                childAspectRatio: 3, // Adjusted for smaller buttons
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: grades.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Updated color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    if (grades[index] == "8 - 9" ||
                        grades[index] == "1 - 3" ||
                        grades[index] == "4 - 7") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Construction2(),
                        ),
                      );
                    } else {
                      // Action for "10 - 12" grade
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Feature for grades 10 - 12 is under development.",
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    grades[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14, // Slightly smaller text for better fit
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
