import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz/answers_button.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Question extends StatefulWidget {
  Question(this.selectedAns, {super.key});
  void Function(String) selectedAns;
  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  var questionIn = 0;
  var rA = 0;
  void nextQ(String answer) {
    // Call the function to store the selected answer
    widget.selectedAns(answer);

    // Check the answer once, without a loop
    if (answer == questions[questionIn].answers[0]) {
      log('right ');
      // You could also increment a counter for right answers here if you want.
      // e.g., rA++;
    } else {
      log('wrong  ');
    }

    // Move to the next question
    setState(() {
      questionIn++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = questions[questionIn];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQ.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexMono(
                fontWeight: FontWeight.bold,
                wordSpacing: -3,
                fontSize: 15,
              )),
          const SizedBox(
            height: 40,
          ),
          ...currentQ.getShAn().map((e) {
            return Container(
                padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                margin: const EdgeInsets.all(10),
                child: AnswersButton(
                    answerText: e,
                    onPressed: () {
                      nextQ(e);
                    }));
          }),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
