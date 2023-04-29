import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefdicenumber = 1;
  int rightdicenumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      lefdicenumber = Random().nextInt(6) + 1;
                      rightdicenumber = Random().nextInt(6) + 1;
                    });
                    print('dice number is $lefdicenumber');
                  },
                  child: Image.asset('images/dice$lefdicenumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightdicenumber = Random().nextInt(6) + 1;
                      lefdicenumber = Random().nextInt(6) + 1;
                    });
                    print('dice number is $rightdicenumber');
                  },
                  child: Image.asset('images/dice$rightdicenumber.png'))),
        ],
      ),
    );
  }
}
