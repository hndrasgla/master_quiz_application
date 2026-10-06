class Questions {
  String text;
  List<String> answer;
  Questions({required this.text, required this.answer});

  List<String> get shuffleAnswered {
    final shuffleList = List.of(answer);
    shuffleList.shuffle();
    return shuffleList;
  }
}
