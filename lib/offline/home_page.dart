import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
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
      ),
    );
  }
}
