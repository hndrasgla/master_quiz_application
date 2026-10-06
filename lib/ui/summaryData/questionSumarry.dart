import 'package:flutter/material.dart';
import 'package:quiz_application/ui/summaryData/summary_item.dart';

class Questionsumarry extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const Questionsumarry({required this.summaryData, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          return SummaryItem(summaryItem: data);
        }).toList(),
      ),
    );
  }
}
