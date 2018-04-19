import "package:flutter/material.dart";
import "counter_button.dart";
import "mana_menu.dart";

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
  // Initial States
  int _counter = 20;
  bool _manaMenuVisible = false;

  Color _backgroundColor = Colors.blueAccent;

  // Button Icons
  Icon _plusIcon = new Icon(Icons.plus_one);
  Icon _minusIcon = new Icon(Icons.arrow_back);

  // Button push methods
  void _onTapPlus() {
    print("Plus tapped");
    this.setState(() {
      _counter++;
    });
  }
  void _onPressPlus() {
    print("Plus pressed");
    for (int i = 0; i < 50; i++) {
      this.setState(() {
        _counter++;
      });
    }
  }
  void _onTapMinus() {
    this.setState(() {
      _counter--;
    });
  }
  void _onPressMinus() {
    print("Minus pressed");
    for (int i = 0; i < 50; i++) {
      this.setState(() {
        _counter--;
      });
    }
  }

  // Mana menu functionality
  void _showManaMenu() {
    print("Pressed Mana Menu");
    this.setState(() {
      _manaMenuVisible = true;
    });
  }
  void _hideManaMenu() {
    print("Out of Mana Manu");
    this.setState(() {
      _manaMenuVisible = false;
    });
  }



  // TODO: Get this function into mana_menu...
  void _setColor(Color color) {
    print("Setting Color");
    this.setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new RotationTransition(
        turns: new AlwaysStoppedAnimation(widget.rotation / 360),
        child: new Material(
            child: new InkWell(
              onTap: _hideManaMenu,
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Material(
                    color: _backgroundColor,
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
                            new CounterButton(_onTapMinus, _onPressMinus, _minusIcon),
                            new Container(
                              padding: new EdgeInsets.all(30.0),
                              child: new Text(
                                _counter.toString(),
                                style: new TextStyle(
                                  color: _counter > 0 ? Colors.white : Colors.red,
                                  fontSize: 80.0, fontWeight: FontWeight.bold,
                                ), // TextStyle
                              ), // Text
                            ), // Container
                            new CounterButton(_onTapPlus, _onPressPlus, _plusIcon),
                          ],  // <Widget>[]
                        ),  // Row
                      ], // <Widget> []
                    ), // Column
                  ),  // Material
                  _manaMenuVisible == true ? new ManaMenu(_backgroundColor, _setColor) : new Container(),
                ], // <Widget>[]
              ), // Stack
            ) // Inkwell
        ), // Material
      ),  // RotatedTransition
    ); // Expanded
  }
}