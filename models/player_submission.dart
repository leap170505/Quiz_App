import 'question.dart';

class PlayerSubmission {
  List<int> answers = [];

  int calculateScore(List<Question> questions) {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (answers[i] == questions[i].correctIndex) {
        score++;
      }
    }
    return score;
  }
}
