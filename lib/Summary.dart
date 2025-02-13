import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((e) => Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor:
                            e['your_answer_bitch'] == e['correct_answer_is']
                                ? const Color.fromARGB(160, 66, 255, 72)
                                : const Color.fromARGB(202, 245, 67, 54),
                        child: Text(
                            ((e['question_index'] as int) + 1).toString())),
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['question'].toString(),
                            style: GoogleFonts.ibmPlexSansDevanagari(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(e['your_answer_bitch'].toString(),
                              style: GoogleFonts.ibmPlexMono(
                                  fontWeight: FontWeight.w200)),
                          Text(e['correct_answer_is'].toString(),
                              style: const TextStyle(
                                color: Color.fromRGBO(13, 124, 37, 1),
                              )),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
