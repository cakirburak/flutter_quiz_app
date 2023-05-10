import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/home.dart';
import 'package:flutter_quiz_app/screens/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = MyHomePage(switchScreen ,title: 'Quiz App');
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context){

    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 193, 7),
                Color.fromARGB(255, 255, 111, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }  
}