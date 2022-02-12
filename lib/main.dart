/* import 'dart:html';
import 'dart:math'; */

import 'package:flutter/material.dart';
import './random_words.dart';

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

