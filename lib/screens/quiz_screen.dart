import 'package:bioprocess_lexicon/classes/quiz_questions.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final QuizQuestion question;
  const QuizScreen({Key? key, required this.question}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.question.answers.length,
      itemBuilder: (context, index) {
        return ListTile(
            onTap: () {
              if (widget.question.answers[index].correct) debugPrint("correct");
            },
            title: Text(
              widget.question.answers[index].body,
            ));
      },
    );
  }
}
