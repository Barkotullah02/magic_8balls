import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MagicBall(),
  ),
);

class MagicBall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
      ),
    )
      ;
  }

}