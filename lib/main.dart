import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
//        backgroundColor: Colors.transparent,
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        title: Text("Title", style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Text("Content")),
    );
  }
}
