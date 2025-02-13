import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';
import 'home.dart';
import 'dart:developer' as dev;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  void storeAns(String answer) {
    // dev.log(answer);
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        actuveS = Result(selectedAnswers, restart);
      });
      dev.log(selectedAnswers.toString());
    }
  }

  Widget? actuveS;

  void restart() {
    selectedAnswers = [];
    setState(() {
      actuveS = Home(switchS);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    actuveS = Home(switchS);
  }

  void switchS() {
    setState(() {
      actuveS = Question(storeAns);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.cyan]),
            image: DecorationImage(
                image: AssetImage('assets/images/blur.png'),
                fit: BoxFit.fill,
                opacity: 0.62)),
        child: actuveS,
      ),
    ));
  }
}
