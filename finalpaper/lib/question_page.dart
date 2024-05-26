import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  final int questionNumber;

  QuestionPage({required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    // Implement UI for displaying question content based on questionNumber
    return Scaffold(
      appBar: AppBar(
        title: Text('Question $questionNumber'),
      ),
      body: Center(
        child: Text('Question content for question $questionNumber'), // Placeholder text
      ),
    );
  }
}
