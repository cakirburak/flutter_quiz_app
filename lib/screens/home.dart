import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.startQuiz,{super.key, required this.title});

  final void Function() startQuiz;
  final String title;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            color: const Color.fromARGB(170, 0, 0, 0),
            'assets/images/quiz-logo.png',
            width: 280,
          ),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 28, color: Colors.black, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(14),
              foregroundColor: Colors.black,
              backgroundColor: const Color.fromARGB(50, 0, 0, 0),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            ),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
