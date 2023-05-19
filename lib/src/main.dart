import 'dictionary/english.dart';
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
    switch (language) {
      case ScrabbleLanguage.english:
        return englishWords.contains(word);
      case ScrabbleLanguage.french:
        return frenchWords.contains(word.toUpperCase());
      default:
        return false;
    }
  }
}
