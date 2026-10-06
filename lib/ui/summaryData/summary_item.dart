import 'package:flutter/material.dart';
import 'package:quiz_application/ui/summaryData/question_indentifier.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> summaryItem;

  const SummaryItem({required this.summaryItem, super.key});

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryItem["correct_answer"] == summaryItem["user_answered"];

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isCorrectAnswer
              ? Colors.green.withOpacity(0.4)
              : Colors.redAccent.withOpacity(0.4),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // =========================
          // QUESTION NUMBER
          // =========================
          QuestionIndentifier(
            questionIndex: summaryItem["question_index"] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),

          const SizedBox(width: 14),

          // =========================
          // QUESTION CONTENT
          // =========================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryItem["question"] as String,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 12),

                // YOUR ANSWER
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.person, size: 18, color: Colors.white70),

                    const SizedBox(width: 6),

                    const Text(
                      "Your answer: ",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
                Text(
                  summaryItem["user_answered"] as String,
                  style: TextStyle(
                    color: isCorrectAnswer
                        ? Colors.greenAccent
                        : Colors.redAccent,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),

                // CORRECT ANSWER
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle_outline,
                      size: 18,
                      color: Colors.greenAccent,
                    ),

                    const SizedBox(width: 6),
                    const Text(
                      "Correct answer: ",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ],
                ),
                Text(
                  summaryItem["correct_answer"] as String,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 13,
                    height: 1.3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
