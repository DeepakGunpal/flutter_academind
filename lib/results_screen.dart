import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer, required this.onRestart});

  final List<String> chosenAnswer;
  final void Function() onRestart;

  // List<Map<String, Object>> getSummaryData() {
  // getter for the summary data
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // final summaryData = getSummaryData(); // getSummaryData converted to summaryData getter
    final totalQuestions = questions.length;
    final correctAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $correctAnswers out of $totalQuestions questions correctly!"),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
