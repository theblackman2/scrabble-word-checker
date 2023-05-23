# Scrabble Word Checker

## Description
  The Scrabble ODS Word Checker is a Flutter package that allows you to check if a word is in the Official Scrabble Dictionary (ODS). The package is easy to use and can be integrated into your Flutter app in minutes.

  To use the package, simply import it into your project and call the `isValidWord()`  method. The method takes a word as a parameter and returns a boolean value indicating whether the word is in the ODS.

## Installation
Add the dependency to your `pubspec.yaml` file.

```yaml
dependencies:
  scrabble_word_checker: ^0.0.4
```

Get dependencies
```bash
$ flutter pub get
```

## Supported languages
<ul>
  <li>French</li>
  <li>English</li>
</ul>

## Usage
To use this package, first import in anywhere in your code

```dart
import 'package:scrabble_word_checker/scrabble_word_checker.dart';
```

Initialise the word checker class
```dart
final ScrabbleWordChecker wordChecker = ScrabbleWordChecker(language: ScrabbleLanguage.english);
```

Check for any word
```dart
bool isCorrect1 = wordChecker.isValidWord("aa"); // Expected: true
bool isCorrect2 = wordChecker.isValidWord("a"); // Expected: false
```

Get word value

```dart
int value = wordChecker.getWordValue("black"); // Expected: 13
```

Change language
```dart
wordChecker.changeLanguage(ScrabbleLanguage.french)
```
## Licence
Scrabble Word Checker is open source and licenced under Apache 2.0.
You're free to use it for personal purpose, you can also contribute by adding amazing futures.😊
