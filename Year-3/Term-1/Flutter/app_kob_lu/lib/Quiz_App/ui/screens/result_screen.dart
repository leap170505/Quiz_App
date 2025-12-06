import 'package:app_kom_lu/Quiz_App/models/player_submission.dart';
import 'package:flutter/material.dart';
import '../../models/quiz.dart';

class ResultScreen extends StatelessWidget {
  final Quiz quiz;
  final PlayerSubmission submission;
  final VoidCallback onPressed;

  const ResultScreen({
    super.key,
    required this.quiz,
    required this.submission,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final score = submission.calculateScore(quiz.questions);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Score", style: TextStyle(fontSize: 26)),
          SizedBox(height: 20),
          Text(
            "$score / ${quiz.questions.length}",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          ElevatedButton(onPressed: onPressed, child: Text("Back to Home")),
        ],
      ),
    );
  }
}
