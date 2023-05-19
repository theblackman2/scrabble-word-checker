import 'package:flutter/material.dart';
import 'package:scrabble_word_checker/scrabble_word_checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Scrabble word checker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrabbleWordChecker wordChecker = ScrabbleWordChecker();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String word = "";
  bool valid = true;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void checkWord() {
    word = "";
    valid = false;
    setState(() {});
    if (!formKey.currentState!.validate()) {
      return;
    }
    valid = wordChecker.isValidWord(controller.text.trim());
    word = controller.text.trim();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                if (!word.isNotEmpty)
                  Column(
                    children: [
                      Text("Word: $word"),
                      const SizedBox(height: 10.0),
                      Text(
                        "Valid: ${valid.toString()}",
                      ),
                    ],
                  ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller,
                        decoration: const InputDecoration(
                          labelText: "Enter a word",
                          hintText: "Ex: aa",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid word";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 50.0),
                      Center(
                        child: SizedBox(
                          child: ElevatedButton(
                            onPressed: checkWord,
                            child: const Text("Check"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
