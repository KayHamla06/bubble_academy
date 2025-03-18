import 'package:flutter/material.dart';
import 'home_page.dart';
import 'learning_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubble Academy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OfflineHomepage(),
    );
  }
}

class OfflineHomepage extends StatefulWidget {
  const OfflineHomepage({super.key});

  @override
  State<OfflineHomepage> createState() => _OfflineHomepageState();
}

class _OfflineHomepageState extends State<OfflineHomepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const LearningDetailsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
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
    );
  }
}
