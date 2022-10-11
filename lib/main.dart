import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
      drawer: Drawer(backgroundColor: Colors.black26),
    ),
  ));
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDicenumber = 1;
  void changeDiceFaces()
  {
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: TextButton(
                  onPressed: () {
                   changeDiceFaces();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Center(
              child: TextButton(
                  onPressed: () {
                  changeDiceFaces();
                  },
                  child: Image.asset('images/dice$rightDicenumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
