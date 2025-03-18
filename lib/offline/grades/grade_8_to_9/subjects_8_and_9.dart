import 'package:flutter/material.dart';

class Subjects8And9 extends StatefulWidget {
  const Subjects8And9({super.key});

  @override
  State<Subjects8And9> createState() => _Subjects8And9State();
}

class _Subjects8And9State extends State<Subjects8And9> {
  // List of subjects
  List<String> subjects = [
    "Creative Arts",
    "Economic Management Science",
    "English",
    "Geography",
    "History",
    "IsiXhosa",
    "Life Orientation",
    "Mathematics",
    "Natural Sciences",
    "Social Sciences",
    "Technology",
  ];

  // Function to show the popup
  void showGradePopup(String subject) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Which grade are you on for $subject?'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Add logic for Grade 8
                },
                child: const Text('8'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Add logic for Grade 9
                },
                child: const Text('9'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Subjects'),
        backgroundColor: const Color(0xFF002B5B), // Adjusted color
        actions: [
          Row(
            children: [
              const Text(
                'Powered by Bubble',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(width: 4),
              Image.asset(
                'lib/assets/bubble_logo.png', // Replace with your logo asset path
                height: 20,
                width: 20,
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.school,
                size: 100,
                color: Color(0xFF002B5B), // Central icon for subjects
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Display buttons in two columns
                    childAspectRatio: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: subjects.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ElevatedButton(
                      onPressed: () => showGradePopup(subjects[index]),
                      child: Text(subjects[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
