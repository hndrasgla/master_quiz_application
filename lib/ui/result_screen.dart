import 'package:flutter/material.dart';
import 'package:quiz_application/data/data.dart';
import 'package:quiz_application/ui/summaryData/questionSumarry.dart';

class ResultScreen extends StatelessWidget {
  final void Function() restartQuiz;
  final List<String> answeredResult;

  const ResultScreen({
    required this.restartQuiz,
    required this.answeredResult,
    super.key,
  });

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answeredResult.length; i++) {
      summary.add({
        "question_index": i,
        "question": question[i].text,
        "correct_answer": question[i].answer[0],
        "user_answered": answeredResult[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalsQuestion = question.length;

    final numCorrectAnswer = summaryData
        .where((data) => data["user_answered"] == data["correct_answer"])
        .length;

    final numWrongAnswer = numTotalsQuestion - numCorrectAnswer;

    final double percentage = (numCorrectAnswer / numTotalsQuestion) * 100;

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // =========================
            // TITLE
            // =========================
            const Text(
              "Quiz Completed! 🎉",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Here is your quiz result",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            const SizedBox(height: 25),

            // =========================
            // SCORE CARD
            // =========================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff7B2CBF), Color(0xff5A189A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Your Score",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "${percentage.toStringAsFixed(0)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "$numCorrectAnswer / $numTotalsQuestion Correct",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // =========================
            // CORRECT & WRONG
            // =========================
            Row(
              children: [
                Expanded(
                  child: _resultBox(
                    icon: Icons.check_circle,
                    title: "Correct",
                    value: numCorrectAnswer.toString(),
                    color: Colors.green,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _resultBox(
                    icon: Icons.cancel,
                    title: "Wrong",
                    value: numWrongAnswer.toString(),
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // =========================
            // SUMMARY TITLE
            // =========================
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Question Summary",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // =========================
            // SUMMARY
            // =========================
            Questionsumarry(summaryData: summaryData),

            const SizedBox(height: 15),

            // =========================
            // RESTART BUTTON
            // =========================
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: restartQuiz,
                icon: const Icon(Icons.refresh),
                label: const Text(
                  "Restart Quiz",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF141E30),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF141E30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _resultBox({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(0.15)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
