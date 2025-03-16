import 'package:flutter/material.dart';

class OfflineHomepage extends StatefulWidget {
  const OfflineHomepage({super.key});

  @override
  State<OfflineHomepage> createState() => _OfflineHomepageState();
}

class _OfflineHomepageState extends State<OfflineHomepage> {
  String? selectedGrade; // Changed default to null
  String? selectedSubject; // Changed default to null
  List<String> grades = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
  List<String> subjects = ["Science", "Accounting", "History"];
  int _currentIndex = 1; // Make 'Learning Details' the landing page

  // Switch between pages based on BottomNavigationBar selection
  Widget _getScreen(int index) {
    if (index == 0) {
      return _buildHomeContent();
    } else {
      return _buildLearningDetailsContent();
    }
  }

  Widget _buildHomeContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("Grade")),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text("Subject")),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text("Videos")),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text("Quizzes")),
        ],
      ),
    );
  }

  Widget _buildLearningDetailsContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButton<String>(
            value: selectedGrade,
            hint: const Text("Select Your Grade"),
            items: grades.map((String grade) {
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
          if (selectedGrade != null && int.tryParse(selectedGrade!) != null && int.parse(selectedGrade!) >= 10)
            DropdownButton<String>(
              value: selectedSubject,
              hint: const Text("Choose Your Subject"),
              items: subjects.map((String subject) {
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // Keep the ConstrainedBox at the top of the screen
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 50,
                maxHeight: 100,
              ),
              child: Container(
                alignment: Alignment.topCenter,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "BUBBLE",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    children: [
                      TextSpan(
                        text: "\nACADEMY",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\nYour Pocket School!",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: _getScreen(_currentIndex),
              ),
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Learning Details",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint("Next button pressed!");
        },
        backgroundColor: Colors.yellow,
        label: const Text(
          "Next",
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
