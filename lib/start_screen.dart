import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity:0.2,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //     ),
          // ),

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(166, 255, 255, 255),
          ),

          const SizedBox(height: 80),
          Text(
            'Some fun anime quiz!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Lets Go!'),
          )
        ],
      ),
    );
  }
}
