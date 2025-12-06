import 'package:flutter/material.dart';
import '../../models/quiz.dart';

class QuestionScreen extends StatelessWidget {
  final Quiz quiz;
  final int questionIndex;
  final Function(int) onPressed;

  const QuestionScreen({
    super.key, 
    required this.quiz,
    required this.questionIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final question = quiz.questions[questionIndex];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),

          // Choices
          ...List.generate(question.choices.length, (i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: () => onPressed(i),
                child: Text(question.choices[i]),
              ),
            );
          }),
        ],
      ),
    );
  }
}
