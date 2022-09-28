import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
class RandomWordsSL extends StatelessWidget {
  const RandomWordsSL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Welcome to Flutter'),
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

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    //return Text(wordPair.asPascalCase,
    //style: TextStyle(fontSize: 50),);
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Transform.rotate(angle: 0,
            child: Text(
              _suggestions[index].asPascalCase,
              style: _biggerFont,
            ),
          ),
        );
      },
    );
  }
}
