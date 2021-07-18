import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Magic Eight Ball',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic Eight Ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: MagicEightBall(),
      backgroundColor: Colors.blue,
    );
  }
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => new _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int ballImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('images/ball$ballImageNumber.png'),
        ),
      ),
      onPressed: () {
        setState(() {
          ballImageNumber = Random().nextInt(5) + 1;
        });
      },
    );
  }
}
