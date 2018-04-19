import 'package:flutter/material.dart';
import "bonus_apps_menu.dart";

class MiddleBar extends StatefulWidget {
  bool _bonusMenuVisible;
  VoidCallback _hideBonusMenu;
  VoidCallback _showBonusMenu;

  MiddleBar(this._hideBonusMenu, this._showBonusMenu, _bonusMenuVisible);

  @override
  State createState() => new MiddleBarState();
}

class MiddleBarState extends State<MiddleBar> {


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double boxHeight = 20.0;

    return new Material(
      child: new Stack(
        children: <Widget>[
          new SizedBox(
            width: screenWidth,
            height: boxHeight,
            child: new Material(
              color: Colors.black,
              child: new InkWell(
                onTap: widget._showBonusMenu,
              ), // InkWell
            ), // Material
          ), // SizeBox
          widget._bonusMenuVisible == true ? new BonusMenu() : new Container(),
        ], // <Widget>[]
      ), // Stack
    ); // Material
  }

}