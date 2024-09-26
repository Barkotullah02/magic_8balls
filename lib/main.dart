import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MagicBall(),
    debugShowCheckedModeBanner: false,
  ),
);

class MagicBall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ask me anything",
            style: TextStyle(
              color:  Colors.white70,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: const BallPage(),
        backgroundColor: Colors.lightBlueAccent,
      ),
    )
      ;
  }

}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {

    return
      Center(
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  padding: const EdgeInsets.all(30.0),
                  onPressed: (){
                    setState(() {
                      ball = Random.secure().nextInt(5) + 1;
                    });
                  },
                  icon: Image.asset("images/ball$ball.png"),
                ),
              ),
           ]
          ),
      )
    ;
  }
}
