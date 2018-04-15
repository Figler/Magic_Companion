import 'package:flutter/material.dart';
import './Counter.dart';

void main() {
  runApp(new Counter());
}

//class FlutterView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter View',
//      theme: new ThemeData(
//        primarySwatch: Colors.grey,
//      ),
//      home: new MyHomePage(),
//    );
//  }
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Magic Companion',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key}) : super(key: key);
//
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  void _decrementCounter() {
//    setState(() {
//      if (_counter == 0) {
//        return;
//      }
//      _counter--;
//
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return new Scaffold(
//      body: new Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: new Row(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new IconButton(
//                icon: new Icon((Icons.add_circle_outline)),
//                onPressed: _incrementCounter
//            ),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            new IconButton(icon: new Icon((Icons.panorama_fish_eye))
//                , onPressed: _decrementCounter
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//}
//
//class CounterHalf extends StatefulWidget {
//  @override
//  createState() => new _MyCounterHalfState();
//}
//
//class _MyCounterHalfState extends State<CounterHalf> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  void _decrementCounter() {
//    setState(() {
//      if (_counter == 0) {
//        return;
//      }
//      _counter--;
//
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return new Scaffold(
//      body: new Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: new Row(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new IconButton(
//                icon: new Icon((Icons.add_circle_outline)),
//                onPressed: _incrementCounter
//            ),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            new IconButton(icon: new Icon((Icons.panorama_fish_eye))
//                , onPressed: _decrementCounter
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//}
