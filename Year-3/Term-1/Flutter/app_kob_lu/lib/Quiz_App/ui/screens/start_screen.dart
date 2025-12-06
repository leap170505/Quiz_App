import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onPressed;

  const StartScreen({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text("Start Quiz"),
      ),
    );
  }
}
