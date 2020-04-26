import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('I am rich'),
          ),
          body: Center(
            child: Image(
              image: //NetworkImage(
                  //'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80',
                  AssetImage(
                'images/diamond.png',
              ),
            ),
          ),
        ),
      ),
    );
