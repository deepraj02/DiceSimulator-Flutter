import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 97, 4, 4),
          appBar: AppBar(
            title: Center(child: Text("Dice Simulator App")),
            backgroundColor: Color.fromARGB(255, 175, 8, 8),
          ),
          body: diceSimulator(),
        ),
      ),
    );

class diceSimulator extends StatefulWidget {
  const diceSimulator({Key? key}) : super(key: key);

  @override
  _diceSimulatorState createState() => _diceSimulatorState();
}

class _diceSimulatorState extends State<diceSimulator> {
  int mainDice = 1;
  void diceFaceChanger() {
    setState(() {
      mainDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Click Dice",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Container(
            height: 600,
            child: Expanded(
              //Used to resize elements acc to screen
              child: FlatButton(
                onPressed: () {
                  diceFaceChanger();
                },
                child: Image(
                  image: AssetImage("images/dice$mainDice.png"),
                ),
              ),
            ),
          ),

          /* Expanded(
            //Used to resize elements acc to screen
            child: TextButton(
              onPressed: () => print("Button 2 Pressed"),
              child: Image.asset("images/dice1.png"),
            ),
          ), */
        ],
      ),
    );
  }
}
