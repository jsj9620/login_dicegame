import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

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
                  Expanded(child: Image.asset('assets/dice1.png')),
                  SizedBox(width: 20.0),
                  Expanded(child: Image.asset('assets/dice2.png')),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                  minimumSize: Size(100, 50)
                ),
                child: Icon(Icons.play_arrow, color: Colors.white, size: 50.0,)
            ),
          ],
        ),
      ),
    );
  }
}
