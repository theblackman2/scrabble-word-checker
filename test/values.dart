import 'package:scrabble_word_checker/scrabble_word_checker.dart';
import 'package:test/test.dart';

void main() {
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
