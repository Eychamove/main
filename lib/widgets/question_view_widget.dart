import 'package:bioprocess_lexicon/classes/quiz_questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  final QuizQuestion question;
  const QuestionScreen({Key? key, required this.question}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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
