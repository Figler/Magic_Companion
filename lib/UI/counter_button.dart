import "package:flutter/material.dart";

class CounterButton extends StatelessWidget {
  VoidCallback _onTap;
  VoidCallback _onLongPress;
  Icon _icon;

  CounterButton(this._onTap, this._onLongPress, this._icon);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new GestureDetector(
        onLongPress: _onLongPress,
        child: new Container(
          child: new IconButton(
            iconSize: 45.0,
            icon: _icon,
            onPressed: _onTap,
          ), // IconButton (facade)
        ), // Container
      ), // GestureDetector
    ); // Container
  }

}