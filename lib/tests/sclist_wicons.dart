import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ListWithIcons extends StatefulWidget {
  const ListWithIcons({Key? key}) : super(key: key);

  @override
  State<ListWithIcons> createState() => _ListWithIconsState();
}

class _ListWithIconsState extends State<ListWithIcons> {

  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

       centerTitle: true,
       title: Text('Welcome to Flutter'),
       actions: [
         IconButton(onPressed: _pushSaved, icon: const Icon(Icons.list), tooltip: 'Saved Suggestions',),
       ],
     ),
      body: ListView.builder(
        padding: const EdgeInsets.all(18.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          final alreadySaved = _saved.contains(_suggestions[index]);
          return ListTile(
            title: Transform.rotate(angle: 0,
              child: Text(
                _suggestions[index].asPascalCase,
                style: _biggerFont,
              ),
            ),
            trailing: Icon(alreadySaved ? Icons.add_circle : Icons.add_circle_outline,
            color: alreadySaved ? Colors.red : null ,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',),
            onTap: (){
              setState(() {
                if (alreadySaved){
                  _saved.remove(_suggestions[index]);
                }
                else {
                  _saved.add(_suggestions[index]);
                }
              });
            },
          );
        },
      ),
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              final tiles = _saved.map(
                    (pair) {
                      return ListTile(
                        title: Text(
                            pair.asPascalCase,
                            style: _biggerFont
                        ),
                      );
                      },
              );
              final divided = tiles.isNotEmpty
                  ? ListTile.divideTiles(
                  tiles: tiles,
                  context: context
              ).toList()
                  :<Widget>[];
              return Scaffold(
                appBar: AppBar(
                  title: Text('Saved Suggestions'),
                ),
                body: ListView(children: divided),
              );
            },
        ),
    );
  }

}
