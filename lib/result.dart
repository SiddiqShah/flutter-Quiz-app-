import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/Summary.dart';
import 'package:quiz/data/questions.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  const Result(this.selectedAnswer, this.restart, {super.key});

  final List<String> selectedAnswer;
  final void Function() restart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer_is': questions[i].answers[0],
        'your_answer_bitch': selectedAnswer[i],
      });
    }
    return summary;
  }

//Widget? swiitch;
  //oid Function() resultPge;
  @override
  @override
  @override
  Widget build(BuildContext context) {
    var numOfCorrectAns = 0;

    for (var i = 0; i < summaryData.length; i++) {
      if (summaryData[i]['correct_answer_is'] ==
          summaryData[i]['your_answer_bitch']) {
        numOfCorrectAns++;
      }
    }
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'you answerd $numOfCorrectAns of ${questions
                  .length} questions right',
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexMono(
                fontWeight: FontWeight.bold,
                wordSpacing: -3,
                fontSize: 15,
              )),
          const SizedBox(
            height: 40,
          ),
          Summary(summaryData),
          IconButton.filled(
            onPressed: restart,
            icon: const Icon(Icons.replay_outlined),
            style: IconButton.styleFrom(backgroundColor: Colors.black),
            iconSize: 45,
          ),
          const SizedBox(
            height: 20,
          ),
          numOfCorrectAns ==
              9 // <-- The condition has been changed to specifically check for 9.
              ? Text(
            'Niicee , wanna try again?',
            style: GoogleFonts.ibmPlexSans(),
          )
              : Text(
            'Try Again Loser',
            style: GoogleFonts.ibmPlexSans(),
          )
        ],
      ),
    );
  }
}