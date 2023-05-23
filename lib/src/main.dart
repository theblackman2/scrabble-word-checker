import 'dictionary/english.dart';
import 'dictionary/french.dart';
import 'utils/constants.dart';

class ScrabbleWordChecker {
  /// The checker language, default language is set to french
  ScrabbleLanguage language;

  ScrabbleWordChecker({
    /// Set default language to french
    this.language = ScrabbleLanguage.french,
  });

  /// Change the checker language
  /// Default language is french
  ///
  /// For availlable languages, see the readme file
  ///
  /// Languages are stored in [ScrabbleLanguage] enum
  void changeLanguage(ScrabbleLanguage newLanguage) {
    language = newLanguage;
  }

  /// Returns true if the word provided is valid in ODS
  ///
  /// This function searches on the dictionary based on the language
  ///
  /// To change the language, call the [changeLanguage] function
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

  /// Returns an int value based on [letterValues]
  ///
  /// Takes a word as parametter
  int getWordValue(String word) {
    int sum = 0;
    for (int i = 0; i < word.length; i++) {
      final int value = letterValues[word[i].toLowerCase()] ?? 0;
      sum += value;
    }
    return sum;
  }
}
