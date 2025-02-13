class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShAn() {
    final shufList = List.of(answers);
    shufList.shuffle();
    return shufList;
  }
}
