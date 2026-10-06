import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  final String answer;
  final String labels;
  final void Function() onTap;

  const AnswerButton({
    required this.answer,
    required this.labels,
    required this.onTap,
    super.key,
  });

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.08),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(color: Colors.white.withOpacity(0.15)),
            ),
          ),
          onPressed: widget.onTap,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      widget.labels,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  widget.answer,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
