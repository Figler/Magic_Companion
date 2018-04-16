import "package:flutter/material.dart";

class CounterHalf extends StatefulWidget {
  // Initialize top or bottom
  int _rotation;

  // Constructor
  CounterHalf(this._rotation);

  // Getters
  int get rotation => _rotation;

  @override
  State createState() => new CounterHalfState();
}

class CounterHalfState extends State<CounterHalf> {
  int _counter = 20;

  void _onTapMinus() {
    this.setState(() {
      _counter--;
    });
  }

  void _onTapPlus() {
    this.setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new RotationTransition(
        turns: new AlwaysStoppedAnimation(widget.rotation / 360),
        child: new Material(
          color: Colors.blueAccent,
          child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(
              icon: new Icon(Icons.ac_unit),
              onPressed: _onTapMinus,
            ), //IconButton
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Text(
                _counter.toString(),
                style: new TextStyle(
                    color: _counter > 1 ? Colors.white : Colors.red,
                    fontSize: 70.0, fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
            ), // Container
            new IconButton(
              icon: new Icon(Icons.add_circle_outline),
              onPressed: _onTapPlus,
            ), // IconButton
          ],  // <Widget>[]
        ),  // Row
       ),  // Material
      ),  // RotatedTransition
    ); // Expanded
  }
}