import 'package:app_kom_lu/Quiz_App/models/player_submission.dart';
import 'package:flutter/material.dart';
import 'data/repositories/quiz_mock_repository.dart';
import 'models/quiz.dart';
import 'ui/screens/start_screen.dart';
import 'ui/screens/question_screen.dart';
import 'ui/screens/result_screen.dart';

void main() {
  final quiz = QuizMockRepository().loadQuiz();
  runApp(MyApp(quiz: quiz));
}

class MyApp extends StatefulWidget {
  final Quiz quiz;

  const MyApp({super.key, required this.quiz});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int screenIndex = 0;
  int questionIndex = 0;
  late PlayerSubmission submission;

  void goToStart() {
    setState(() {
      screenIndex = 0;
      questionIndex = 0;
    });
  }

  void startQuiz() {
    setState(() {
      screenIndex = 1;
      submission = PlayerSubmission();
    });
  }

  void answerQuestion(int choice) {
    submission.answers.add(choice);

    if (questionIndex < widget.quiz.questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    } else {
      setState(() {
        screenIndex = 2; // result screen
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (screenIndex == 0) {
      screen = StartScreen(onPressed: startQuiz);
    } else if (screenIndex == 1) {
      screen = QuestionScreen(
        quiz: widget.quiz,
        questionIndex: questionIndex,
        onPressed: answerQuestion,
      );
    } else {
      screen = ResultScreen(
        quiz: widget.quiz,
        submission: submission,
        onPressed: goToStart,
      );
    }

    return MaterialApp(home: Scaffold(body: screen));
  }
}
