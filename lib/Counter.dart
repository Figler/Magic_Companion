import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter ({
    key
  }) : super(key: key);

  @override
  CounterState createState() => new CounterState();
}

class CounterState extends State<Counter> {
  // Members
  int counter = 0;

  // Functions
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget home = new CounterHome(
      return new MaterialApp(
        title: "Counter",
        color: Colors.blue,
        home: home,
        builder: (BuildContext context, Widget child) {
          return new Scaffold(
            body: new Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new IconButton(
                      icon: new Icon((Icons.add_circle_outline)),
                      onPressed: incrementCounter
                  ),
                  new Text(
                    '$counter',
                  ),
                  new IconButton(icon: new Icon((Icons.panorama_fish_eye))
                      , onPressed: decrementCounter
                  ),
                ],
              ),
            ),
          );
        }
      );
    }
  );
}
