import "package:flutter/material.dart";
import "../UI/counter_half.dart";
import "../UI/middle_bar.dart";

// Boilerplate
class CounterPage extends StatefulWidget {
  @override
  State createState() => new CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack( // Layers children on top of each other
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CounterHalf(180), // Opponent
            // new MiddleBar(), TODO: Figure out the inkwell hiding
            new CounterHalf(0),  // Player
          ], // <Widget>[]
        ), // Column
      ], // <Widget>[]
    ); // Stack
  }
}