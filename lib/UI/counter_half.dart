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
  bool _manaMenu = false;
  bool _lights = false;

  void _onTapMinus() {
    this.setState(() {
      _counter--;
    });
  }

  void _onTapPlus() {
    print("Plus tapped");
    this.setState(() {
      _counter++;
    });
  }

  void _onPressPlus() {
    print("Plus pressed");
    for (int i = 0; i < 1000; i++) {
      this.setState(() {
        _counter++;
      });
    }
  }

  void _showManaMenu() {
    print("Pressed Mana Menu");
    this.setState(() {
      _manaMenu = true;
    });
  }

  void _tapDown(TapDownDetails details) {
    setState(() {
      print("Tap in progress");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new RotationTransition(
        turns: new AlwaysStoppedAnimation(widget.rotation / 360),
        child: new Stack(
          children: <Widget>[
            new Material(
            color: Colors.blueAccent,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new IconButton(
                        icon: new Icon(Icons.menu),
                        onPressed: _showManaMenu,
                      ), // IconButton
                    ], // <Widget>[]
                  ), // Row
                  new Row(
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
                            color: _counter > 0 ? Colors.white : Colors.red,
                            fontSize: 70.0, fontWeight: FontWeight.bold,
                          ), // TextStyle
                        ), // Text
                      ), // Container
                      new Container(
                        child: new GestureDetector(
                          onLongPress: _onPressPlus,
                          child: new Container(
                            child: new IconButton(
                              icon: new Icon(Icons.add_circle_outline),
                              onPressed: _onTapPlus,
                            ), // IconButton (facade)
                          ), // Container
                        ), // GestureDetector
                      ), // Container
                    ],  // <Widget>[]
                  ),  // Row
                ], // <Widget> []
              ), // Column
            ),  // Material
          ], // <Widget>[]
        ), // Stack
      ),  // RotatedTransition
    ); // Expanded
  }
}