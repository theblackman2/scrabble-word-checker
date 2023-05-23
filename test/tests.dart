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

  group("Word value", () {
    test(
      "Check if returned value is 0 for empty string",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        const String emptyString = "";
        final int value = checker.getWordValue(emptyString);
        expect(value, 0);
      },
    );

    test(
      "Check if int string value is 0",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        const String intString = "123";
        final int value = checker.getWordValue(intString);
        expect(value, 0);
      },
    );

    test(
      "Check if returned value is 0 for incorrect string",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        const String incorrectString = "Gaoa-139@#01";
        final int value = checker.getWordValue(incorrectString);
        expect(value, 0);
      },
    );

    test(
      "Check if for a given word, the value is correct",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        const String incorrectString = "black";
        final int value = checker.getWordValue(incorrectString);
        expect(value, 13);
      },
    );

    test(
      "Check if returned value for spaced word is 0",
      () {
        final ScrabbleWordChecker checker = ScrabbleWordChecker();
        const String incorrectString = "black man";
        final int value = checker.getWordValue(incorrectString);
        expect(value, 0);
      },
    );
  });
}
