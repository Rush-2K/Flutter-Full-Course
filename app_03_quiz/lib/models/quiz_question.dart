//file with question blueprint
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); //.of to copy the value
    shuffledList.shuffle(); 
    return shuffledList;
  }
}