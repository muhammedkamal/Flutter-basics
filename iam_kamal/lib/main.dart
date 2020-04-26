import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Hello Kamal!'),
          backgroundColor: Colors.grey[700],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/pp.jpg'),
          ),
        ),
      ),
    ),
  );
}
