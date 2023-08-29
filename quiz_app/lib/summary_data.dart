import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map(
            (e) {
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(7),
                    decoration: ShapeDecoration(
                      color: (e['Correct Answer'] == e['User Answers']
                          ? const Color.fromARGB(255, 73, 138, 53)
                          : const Color.fromARGB(255, 197, 66, 57)),
                      shape: const CircleBorder(
                        side: BorderSide(width: 5),
                      ),
                    ),
                    child: Text(
                      ((e['Question Index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            e['Question'] as String),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 73, 138, 53),
                            ),
                            'Correct Answer: ${e['Correct Answer'] as String}'),
                        Text(
                            style: GoogleFonts.lato(
                              color: (e['Correct Answer'] == e['User Answers']
                                  ? const Color.fromARGB(255, 73, 138, 53)
                                  : const Color.fromARGB(255, 197, 66, 57)),
                            ),
                            'Your Answer: ${e['User Answers'] as String}'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
