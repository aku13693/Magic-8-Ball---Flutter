import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        title: Text('My Decision is ......'),
        toolbarHeight: 70,
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballPage = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ballPage.png'),
        ),
      ),
    );
  }
}
