import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 530,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(  radius: 20,
                  backgroundColor:const Color.fromARGB(160, 105, 61, 4),
                    child: Text(((data['question_index'] as int) + 1).toString()),
                    ),
                  const SizedBox(width:20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String, 
                        style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                       ),
                       ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String,
                        style: GoogleFonts.lato(
                           color: data['user_answer'] == data['correct_answer']
                                  ? Color.fromARGB(255, 109, 232, 84)
                                  : Color.fromARGB(255, 174, 10, 10),
                           fontSize: 15,
                          fontWeight: FontWeight.bold,),
                        ),
                        Text(data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 109, 232, 84),
                           fontSize: 13,
                          fontWeight: FontWeight.bold,),
                          ),
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