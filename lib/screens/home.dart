import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.amber[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 280,
            ),
            const SizedBox(height: 40),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(14),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
