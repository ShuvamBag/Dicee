import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('Diceee'),
          ),
        ),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber = 1;
  int rightdicenumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    leftdicenumber = Random().nextInt(6) + 1;
                    rightdicenumber = Random().nextInt(6) + 1;
                  },
                );
              },
              child: Image.asset('Images/dice-six-faces-$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                        () {
                      rightdicenumber = Random().nextInt(6) + 1;
                      leftdicenumber = Random().nextInt(6) + 1;
                    },
                );
              },
              child: Image.asset('Images/dice-six-faces-$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
