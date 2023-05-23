import 'package:scrabble_word_checker/scrabble_word_checker.dart';
import 'package:test/test.dart';

void main() {
  final ScrabbleWordChecker checker = ScrabbleWordChecker();

  test(
    "Check if returned value is 0 for empty string",
    () {
      const String emptyString = "";
      final int value = checker.getWordValue(emptyString);
      expect(value, 0);
    },
  );

  test(
    "Check if int string value is 0",
    () {
      const String intString = "123";
      final int value = checker.getWordValue(intString);
      expect(value, 0);
    },
  );

  test(
    "Check if returned value is 0 for incorrect string",
    () {
      const String incorrectString = "Gaoa-139@#01";
      final int value = checker.getWordValue(incorrectString);
      expect(value, 0);
    },
  );

  test(
    "Check if for a given word, the value is correct",
    () {
      const String incorrectString = "black";
      final int value = checker.getWordValue(incorrectString);
      expect(value, 13);
    },
  );

  test(
    "Check if returned value for spaced word is 0",
    () {
      const String incorrectString = "black man";
      final int value = checker.getWordValue(incorrectString);
      expect(value, 0);
    },
  );
}
