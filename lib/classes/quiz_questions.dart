class QuizQuestion {
  List<Anwer> answers;
  String questionBody;

  QuizQuestion({required this.answers, required this.questionBody});
}

class Anwer {
  String body;
  bool correct;

  Anwer({required this.body, required this.correct});
}
