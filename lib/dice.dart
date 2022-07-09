import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int leftScore = 0;
  int rightDice = 2;
  int rightScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(child: Image.asset('assets/dice$leftDice.png')),
                  SizedBox(width: 20.0),
                  Expanded(child: Image.asset('assets/dice$rightDice.png')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '$leftScore',
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                SizedBox(width: 170.0),
                Text(
                  '$rightScore',
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                    leftScore += leftDice;
                    rightScore += rightDice;
                  });
                  showToast("Left : [$leftDice], Right : [$rightDice]");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent, minimumSize: Size(100, 50)),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 50.0,
                )),
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      textColor: Colors.black,
      backgroundColor: Colors.orangeAccent,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
