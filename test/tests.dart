import 'package:test/test.dart';
import 'package:scrabble_word_checker/scrabble_word_checker.dart';

void main() {
  group("Languages tests", () {
    test(
      "Check if default language is french",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
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
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        checker.changeLanguage(ScrabbleLanguage.english);
        expect(checker.language, ScrabbleLanguage.english);
      },
    );
  });
}
