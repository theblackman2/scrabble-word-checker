import './words.dart';

class ScrabbleWordChecker {
  final String word;
  ScrabbleWordChecker({
    required this.word,
  });

  bool isValidWord() {
    if (words.contains(word)) {
      return true;
    }
    return false;
  }
}
