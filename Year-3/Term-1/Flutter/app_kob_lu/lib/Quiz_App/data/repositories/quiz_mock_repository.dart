import '../../models/question.dart';
import '../../models/quiz.dart';

class QuizMockRepository {
  Quiz loadQuiz() {
    return Quiz(
      title: "Basic Quiz",
      questions: [
        Question(
          text: "What is Flutter?",
          choices: ["Framework", "Programming language", "Database", "Game engine"],
          correctIndex: 0,
        ),
        Question(
          text: "Which language does Flutter use?",
          choices: ["Java", "Kotlin", "Dart", "Swift"],
          correctIndex: 2,
        ),
        Question(
          text: "Who created Flutter?",
          choices: ["Meta", "Google", "Microsoft"],
          correctIndex: 1,
        ),
      ],
    );
  }
}
