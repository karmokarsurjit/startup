import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class EnglishWordsPair extends StatelessWidget {
  const EnglishWordsPair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: Center(
        //child: Text('Hello World'),
        child: Text(wordPair.asSnakeCase,
        style: const TextStyle(fontSize: 50),),
      ),
    );
  }
}
