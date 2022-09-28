import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
class RandomWordsSL extends StatelessWidget {
  const RandomWordsSL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: const Center(
        //child: Text(wordPair.asPascalCase),
        child: RandomWords(),
      ),
    );
  }
}


class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase,
    style: const TextStyle(fontSize: 50),);
  }
}
