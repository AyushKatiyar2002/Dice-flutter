import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Suez',
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=1;
  int right=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:(){
                setState(() {
                  left=Random().nextInt(6)+1;
                  right=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$left.png'),


            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed:(){
                setState(() {
                  left=Random().nextInt(6)+1;
                  right=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$right.png'),

            ),
          ),
        ],
      ),
    );
  }
  }


