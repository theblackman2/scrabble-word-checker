import './words.dart';

class ScrabbleWordChecker {
  bool isValidWord(String word) {
    if (words.contains(word.toUpperCase())) {
      return true;
    }
    return false;
  }
}
