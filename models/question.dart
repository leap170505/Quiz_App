class Question {
  final String text;
  final List<String> choices;
  final int correctIndex;

  Question({
    required this.text,
    required this.choices,
    required this.correctIndex,
  });
}
