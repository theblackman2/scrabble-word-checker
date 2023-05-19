import 'dictionary/french.dart';

class ScrabbleWordChecker {
  bool isValidWord(String word) {
    if (frenchWords.contains(word.toUpperCase())) {
      return true;
    }
    return false;
  }
}
