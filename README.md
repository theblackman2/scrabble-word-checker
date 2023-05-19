# Scrabble Word Checker

## Installation
Add the dependency to your `pubspec.yaml` file.

```yaml
dependencies:
  scrabble_word_checker: any
```

Get dependencies
```bash
$ flutter pub get
```

## Usage
To use this package, first import in anywhere in your code

```dart
import 'package:scrabble_word_checker/scrabble_word_checker.dart';
```

Initialise the word checker class
```dart
final ScrabbleWordChecker wordChecker = ScrabbleWordChecker();
```

Check for any word
```dart
bool isCorrect1 = wordChecker.isValidWord("aa"); // Expected: true
bool isCorrect2 = wordChecker.isValidWord("a"); // Expected: false
```

## Licence
Scrabble Word Checker is open source and licenced under Apache 2.0.
You're free to use it for personal purpose, you can also contribute by adding amazing futures.😊
