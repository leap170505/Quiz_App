class button_app extends StatelessWidget {
  const button_app({
    super.key,
    required this.onPressed,
    required this.question,
  });

  final Function(int p1) onPressed;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () => onPressed(i),
        child: Text(question.choices[i]),
      ),
    );
  }
}
