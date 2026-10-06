import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIndentifier({
    required this.questionIndex,
    required this.isCorrectAnswer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 38,
      height: 38,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Colors.green.withOpacity(0.2)
            : Colors.redAccent.withOpacity(0.2),
        shape: BoxShape.circle,
        border: Border.all(
          color: isCorrectAnswer ? Colors.greenAccent : Colors.redAccent,
          width: 1.5,
        ),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: isCorrectAnswer ? Colors.greenAccent : Colors.redAccent,
        ),
      ),
    );
  }
}
