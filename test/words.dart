import 'dart:math';

import 'package:scrabble_word_checker/src/dictionary/english.dart';
import 'package:scrabble_word_checker/src/dictionary/french.dart';
import 'package:scrabble_word_checker/src/main.dart';
import 'package:scrabble_word_checker/src/utils/constants.dart';
import 'package:test/test.dart';

extension ListUtils on List<String> {
  String random() {
    final Random random = Random();
    var i = random.nextInt(length);
    return this[i];
  }
}

void main() {
  final ScrabbleWordChecker checker = ScrabbleWordChecker();

  test(
    "Check if returnd value is false for empty word",
    () {
      const String emptyWord = "";
      final bool valid = checker.isValidWord(emptyWord);
      expect(valid, false);
    },
  );

  test(
    "Check if returned value is false for incorrect word format",
    () {
      const String incorrectWord = "123feiuqe+120\$";
      final bool valid = checker.isValidWord(incorrectWord);
      expect(valid, false);
    },
  );

  test(
    "Check if for a random word, the returned value is correct",
    () {
      final String randomEnglishWord = englishWords.random();
      final String randomFrenchWord = frenchWords.random();

      final bool isFrenchCorrect = checker.isValidWord(randomFrenchWord);
      expect(isFrenchCorrect, true);

      checker.changeLanguage(ScrabbleLanguage.english);

      final bool isEnglishCorrect = checker.isValidWord(randomEnglishWord);
      expect(isEnglishCorrect, true);
    },
  );

  test(
    "Check if for random incorrect word, the returned value is false",
    () {
      const String incorrectWord = "aflaeahfa";
      checker.changeLanguage(ScrabbleLanguage.english);
      final bool isCorrectInEnglish = checker.isValidWord(incorrectWord);
      expect(isCorrectInEnglish, false);

      checker.changeLanguage(ScrabbleLanguage.french);
      final bool isCorrectFrench = checker.isValidWord(incorrectWord);
      expect(isCorrectFrench, false);
    },
  );
}
