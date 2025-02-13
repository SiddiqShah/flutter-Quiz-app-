import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(
      {super.key, required this.answerText, required this.onPressed});

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: const Icon(Icons.keyboard_arrow_right_outlined),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        label: Text(answerText,
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexMono(
              wordSpacing: -3,
              // fontSize: 15,
            )));
  }
}
