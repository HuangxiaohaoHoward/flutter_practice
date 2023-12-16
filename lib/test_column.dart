import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestColumn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Column(
        children: <Widget>[
          Text("column body"),
          Text("hi"),
          Text("world"),
        ],
      ),
    );
  }
}