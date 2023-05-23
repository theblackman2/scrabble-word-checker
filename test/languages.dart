import 'package:test/test.dart';
import 'package:scrabble_word_checker/scrabble_word_checker.dart';

void main() {
  final ScrabbleWordChecker checker = ScrabbleWordChecker();

  test(
    "Check if default language is french",
    () {
      final ScrabbleLanguage language = checker.language;

      expect(language, ScrabbleLanguage.french);
    },
  );

  test(
    "Check if the the checker class is initialised with right language",
    () {
      final ScrabbleWordChecker checker = ScrabbleWordChecker(
        language: ScrabbleLanguage.english,
      );
      final ScrabbleLanguage language = checker.language;
      expect(language, ScrabbleLanguage.english);
    },
  );

  test(
    "Check if the language changes successfully",
    () {
      checker.changeLanguage(ScrabbleLanguage.english);
      expect(checker.language, ScrabbleLanguage.english);
    },
  );
}
