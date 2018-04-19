import "package:flutter/material.dart";

class BonusMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Hello World");
    return new Expanded(
      child: new Material(
        color: Colors.redAccent,
        child: new Text("Hello World"),
      ),
    );
  }
}