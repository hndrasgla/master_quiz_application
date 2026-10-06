import 'package:flutter/material.dart';
import 'package:quiz_application/data/data.dart';
// import 'package:quiz_application/models/model_data.dart';
import 'package:quiz_application/ui/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String answer) chooseAnswered;
  const QuestionScreen({required this.chooseAnswered, super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndexAnswer = 0;

  void answerSelected(String answer) {
    widget.chooseAnswered(answer);
    if (currentIndexAnswer < question.length - 1) {
      setState(() {
        currentIndexAnswer++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentIndexAnswer];
    final progress = (currentIndexAnswer + 1) / question.length;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "QUIZ MASTER",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.15)),
                    ),
                    child: Text(
                      "${currentIndexAnswer + 1}/${question.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: LinearProgressIndicator(
                  value: progress,
                  color: Colors.blue,
                  minHeight: 8,
                  backgroundColor: Colors.white.withOpacity(0.12),
                  valueColor: AlwaysStoppedAnimation(
                    Color.fromARGB(255, 103, 175, 234),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.10),
                  border: Border.all(color: Colors.white.withOpacity(0.15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Color(0xFF64B5F6),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Text(
                              "${currentIndexAnswer + 1}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          "QUESTION",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF90CAF9),
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Text(
                      currentQuestion.text,
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Choose your answer",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              ...currentQuestion.shuffleAnswered.asMap().entries.map((entry) {
                final index = entry.key;
                final answer = entry.value;
                final labels = ["A", "B", "C", "D"];

                return AnswerButton(
                  answer: answer,
                  labels: labels[index],
                  onTap: () {
                    answerSelected(answer);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
