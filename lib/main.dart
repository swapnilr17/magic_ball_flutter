import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: null,
        appBar: AppBar(
          title: Text('Magic App'),
        ),
        body: MagicApp(),
      ),
    ),
  );
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void getNumber(){
    leftDiceNumber = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    getNumber();
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$leftDiceNumber.png'),
                ),
              )
          ),
        ],
      ),
    );
  }
}