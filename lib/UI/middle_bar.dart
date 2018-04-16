import 'package:flutter/material.dart';

class MiddleBar extends StatelessWidget{

  void _onTap() {
    print("Hello world");
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Material(
          color: Colors.black,
          child: new InkWell(
            onTap: () => _onTap(),
          ), // Inkwell
        ) // Material
    ); // Expanded

  }

}