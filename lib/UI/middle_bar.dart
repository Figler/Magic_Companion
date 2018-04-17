import 'package:flutter/material.dart';

class MiddleBar extends StatelessWidget{

  void _onTap() {
    print("Hello world");
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double boxHeight = 20.0;
    return new SizedBox(
      width: screenWidth,
      height: boxHeight,
    );
  }

}