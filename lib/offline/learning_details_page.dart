import 'package:flutter/material.dart';
import 'package:bubble_academy/offline/construction.dart';

class LearningDetailsPage extends StatefulWidget {
  const LearningDetailsPage({super.key});

  @override
  State<LearningDetailsPage> createState() => _LearningDetailsPageState();
}

class _LearningDetailsPageState extends State<LearningDetailsPage> {
  String? selectedGrade;
  String? selectedSubject;

  List<String> grades = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];
  List<String> subjects = ["Science", "Accounting", "History"];

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
          'Learning Details',
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
            DropdownButton<String>(
              value: selectedGrade,
              hint: const Text("Select Your Grade"),
              items:
                  grades.map((String grade) {
                    return DropdownMenuItem<String>(
                      value: grade,
                      child: Text(grade),
                    );
                  }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedGrade = newValue!;
                  selectedSubject = null; // Reset subject if grade changes
                });
              },
            ),
            const SizedBox(height: 20),
            if (selectedGrade != null &&
                int.tryParse(selectedGrade!) != null &&
                int.parse(selectedGrade!) >= 10)
              DropdownButton<String>(
                value: selectedSubject,
                hint: const Text("Choose Your Subject"),
                items:
                    subjects.map((String subject) {
                      return DropdownMenuItem<String>(
                        value: subject,
                        child: Text(subject),
                      );
                    }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSubject = newValue!;
                  });
                },
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (selectedGrade != null && grades.contains(selectedGrade)) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => Construction(grade: int.parse(selectedGrade!)),
              ),
            );
          } else {
            print("Please select a valid grade.");
          }
        },
        backgroundColor: Colors.yellow,
        label: const Text("Next", style: TextStyle(color: Colors.black)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
