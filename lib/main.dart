/* import 'dart:html';
import 'dart:math'; */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // Declare variable to store english words
    
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: RandomWords() );
  }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => RandomWordsState();

}

class RandomWordsState extends State<RandomWords>{
  final _randomWordsPairs = <WordPair>[];

  Widget _buildList(){
    return ListView.builder(
  padding: const EdgeInsets.all(16.0),
  itemBuilder: (context, item){
    if(item.isOdd) return Divider();

    final index = item ~/2;
    if(index >=_randomWordsPairs.length){
      _randomWordsPairs.addAll(generateWordPairs().take(10));
    }

    return _buildRow(_randomWordsPairs[index]);
  },
);
}
  Widget _buildRow(WordPair pair){
    return ListTile(title: Text(pair.asPascalCase, style: TextStyle(fontSize: 18.0)));
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator')),
        body: _buildList()
    );
  }
}