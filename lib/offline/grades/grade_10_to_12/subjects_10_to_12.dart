import 'package:flutter/material.dart';

class Subject10and12 extends StatefulWidget {
  const Subject10and12({super.key});

  @override
  State<Subject10and12> createState() => _Subject10and12State();
}

class _Subject10and12State extends State<Subject10and12> {
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  // Add logic for Grade 8
                },
                child: const Text('8', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  // Add logic for Grade 9
                },
                child: const Text('9', style: TextStyle(color: Colors.white)),
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
        title: const Center(
          child: Text(
            'Your Subjects',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        backgroundColor: const Color(0xFF1976D2),
        automaticallyImplyLeading: false, // Keeps the title centered
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                const Text(
                  'Powered by Bubble',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'lib/assets/bubble_logo.png', // Replace with your logo asset path
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'lib/assets/education.png', // Replace with your logo asset path
              height: 20,
              width: 20,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Display buttons in two columns
                  childAspectRatio: 3.5, // Improved button sizing
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                ),
                itemCount: subjects.length,
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1976D2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 5.0,
                    ),
                    onPressed: () => showGradePopup(subjects[index]),
                    child: Text(
                      subjects[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
