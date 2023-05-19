import './words.dart';

class ScrabbleWordChecker {
  bool isValidWord(String word) {
    if (words.contains(word)) {
      return true;
    }
    return false;
  }
}
