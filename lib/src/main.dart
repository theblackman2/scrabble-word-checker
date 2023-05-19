import 'dictionary/french.dart';
import 'utils/constants.dart';

class ScrabbleWordChecker {
  ScrabbleLanguage language;

  ScrabbleWordChecker({
    this.language = ScrabbleLanguage.french,
  });

  void changeLanguage(ScrabbleLanguage newLanguage) {
    language = newLanguage;
  }

  bool isValidWord(String word) {
    if (frenchWords.contains(word.toUpperCase())) {
      return true;
    }
    return false;
  }
}
