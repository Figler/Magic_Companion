import 'package:flutter/material.dart';

typedef void ColorCallback(Color color);

class ManaMenu extends StatelessWidget {

  Color _backgroundColor;
  ColorCallback _setColor;

  ManaMenu(this._backgroundColor, this._setColor);

  @override
  Widget build(BuildContext context) {
    return new Center (
      child: new Container(
        child: new Material(
          color: _backgroundColor,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.streetview),
                      iconSize: 50.0,
                      onPressed: () {
                        _setColor(Colors.greenAccent);
                      },
                  ), // IconButton - Green
                  new IconButton(
                    icon: new Icon(Icons.format_color_reset),
                    iconSize: 50.0,
                    onPressed: () {
                      _setColor(Colors.blueAccent);
                    },
                  ), // IconButton - Blue
                  new IconButton(
                    icon: new Icon(Icons.fiber_dvr),
                    iconSize: 50.0,
                    onPressed: () {
                      _setColor(Colors.redAccent);
                    },
                  ), // IconButton - Red
                ], // <Widget>[]
              ), // Row
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.wb_sunny),
                    iconSize: 50.0,
                    onPressed: () {
                      _setColor(Colors.orangeAccent);
                    },
                  ), // IconButton - White
                  new IconButton(
                    icon: new Icon(Icons.grade),
                    iconSize: 50.0,
                    onPressed: () {
                      _setColor(Colors.blueGrey);
                    },
                  ), // IconButton - Black
                  new IconButton(
                    icon: new Icon(Icons.poll),
                    iconSize: 50.0,
                    onPressed: () {
                      _setColor(Colors.purpleAccent);
                    },
                  ), // IconButton - Poison
                ], // <Widget>[]
              ), // Row
            ], // <Widget>[]
          ), // Column
        ), // Material
      ), // Container
    ); // Center
  }
}