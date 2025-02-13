import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home(this.switchS, {super.key});

  void Function() switchS;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.black,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Learn With Swetch',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
              onPressed: switchS,
              label: Text('Start',
                  style: GoogleFonts.ibmPlexMono(fontWeight: FontWeight.bold)),
              icon: const Icon(Icons.keyboard_arrow_right_outlined),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
              ))
        ],
      ),
    );
  }
}
